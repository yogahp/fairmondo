#   Copyright (c) 2012-2017, Fairmondo eG.  This file is
#   licensed under the GNU Affero General Public License version 3 or later.
#   See the COPYRIGHT file for details.

require_relative '../test_helper'

describe BusinessTransactionExporter do
  let(:bt) { create :business_transaction_from_legal_entity }

  describe 'csv export' do
    it 'should return a csv string with the business transactions' do
      FactoryGirl.reload

      travel_to Time.new(2016, 04, 01, 12) do
        user = bt.seller
        create :refund, business_transaction: bt

        exporter = BusinessTransactionExporter.new(user)

        expected_csv = File.read('test/fixtures/business_transaction_export1.csv')

        assert_equal(expected_csv, exporter.csv_string)
      end
    end

    it 'should return unified payment method and unified transport provider correctly' do
      FactoryGirl.reload

      travel_to Time.new(2016, 04, 01, 12) do
        lig = create :line_item_group, :with_business_transactions, :with_unified_transport,
                     :with_unified_payment_paypal, :sold
        user = lig.seller

        exporter = BusinessTransactionExporter.new(user)

        expected_csv = File.read('test/fixtures/business_transaction_export2.csv')

        assert_equal(expected_csv, exporter.csv_string)
      end
    end

    it 'should return an expressive filename' do
      travel_to Time.new(2016, 04, 01, 12) do
        time_range = Time.new(2016, 03, 01, 12)..Time.new(2016, 04, 30, 12)
        user = build_stubbed :legal_entity

        exporter = BusinessTransactionExporter.new(user, time_range)

        assert_equal(
          'fairmondo-bestellungen_20160301-20160430.csv',
          exporter.filename
        )
      end
    end
  end

  describe 'date' do
    it 'should only return transaction within the given time range' do
      travel_to Time.new(2016, 01, 01) do
        bt1 = create :business_transaction_from_legal_entity

        user = bt1.seller

        travel_to Time.new(2016, 04, 01) do
          create :business_transaction_from_legal_entity, seller: user

          time_range = Time.new(2016, 03, 01)..Time.new(2016, 05, 01)
          exporter = BusinessTransactionExporter.new(user, time_range)
          assert_equal(1, exporter.query.count)

          time_range = Time.new(2015, 12, 01)..Time.new(2016, 05, 01)
          exporter = BusinessTransactionExporter.new(user, time_range)
          assert_equal(2, exporter.query.count)

          time_range = Time.new(2015, 01, 01)..Time.new(2015, 12, 01)
          exporter = BusinessTransactionExporter.new(user, time_range)
          assert_equal(0, exporter.query.count)
        end
      end
    end
  end
end
