class Library < ActiveRecord::Base

  attr_accessible :name, :public, :user, :user_id

  delegate :nickname, :to => :user, :prefix => true

  # Validations

  validates :name,:user, :presence => { :message => I18n.t('library.error.presence') }

  validates :name, :uniqueness => {:scope => :user_id, :message => I18n.t('library.error.uniqueness')}

  validates_length_of :name, :maximum => 25,:message => I18n.t('library.error.length')

  #Relations

  belongs_to :user

  has_many :library_elements, dependent: :destroy
  has_many :articles, through: :library_elements

  scope :public, where(public: true)

end
