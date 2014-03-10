# encoding: utf-8
#
# == License:
# Fairnopoly - Fairnopoly is an open-source online marketplace.
# Copyright (C) 2013 Fairnopoly eG
#
# This file is part of Fairnopoly.
#
# Fairnopoly is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# Fairnopoly is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with Fairnopoly.  If not, see <http://www.gnu.org/licenses/>.
#
module CategorySeedData
  def setup_categories
    @categories = []
    category_list.each do |category|
      unless c = Category.find_by_name(category[:name])
        c = Category.create category
      end
      @categories << c
    end
    Category.rebuild!
  end

  def category_list
    # To refresh run this on production:
    # Category.order("CASE WHEN parent_id IS NULL THEN 0 ELSE 1 END").order(:parent_id).all.map { |c| {name: c.name, parent_id: c.parent_id} }
    # and copy&paste here
    [{:name=>"Haus & Garten", :parent_id=>nil}, {:name=>"Kunst & Sammeln", :parent_id=>nil}, {:name=>"Medien", :parent_id=>nil}, {:name=>"Accessoires", :parent_id=>nil}, {:name=>"Gesundheit & Pflege", :parent_id=>nil}, {:name=>"Bekleidung", :parent_id=>nil}, {:name=>"Kinder & Baby", :parent_id=>nil}, {:name=>"Freizeit & Sport", :parent_id=>nil}, {:name=>"Bücher", :parent_id=>nil}, {:name=>"Gutscheine", :parent_id=>nil}, {:name=>"Technik", :parent_id=>nil}, {:name=>"Lebensmittel", :parent_id=>nil}, {:name=>"Sonstiges", :parent_id=>nil}, {:name=>"Elektronik", :parent_id=>1}, {:name=>"Fahrzeuge", :parent_id=>1}, {:name=>"Handy & Telefon", :parent_id=>2}, {:name=>"Audio & HiFi", :parent_id=>2}, {:name=>"Computerzubehör", :parent_id=>2}, {:name=>"Foto & Kamera", :parent_id=>2}, {:name=>"Laptopzubehör", :parent_id=>2}, {:name=>"Drucker", :parent_id=>2}, {:name=>"Laptop & Tablet", :parent_id=>2}, {:name=>"TV & Video", :parent_id=>2}, {:name=>"PC, Netzwerk, Software", :parent_id=>2}, {:name=>"Auto", :parent_id=>3}, {:name=>"weitere/sonstige Fahrzeuge", :parent_id=>3}, {:name=>"Motorrad", :parent_id=>3}, {:name=>"Computerspiele", :parent_id=>4}, {:name=>"Musik", :parent_id=>4}, {:name=>"Filme", :parent_id=>4}, {:name=>"Frauen", :parent_id=>5}, {:name=>"Schuhe", :parent_id=>5}, {:name=>"unisex", :parent_id=>5}, {:name=>"Männer", :parent_id=>5}, {:name=>"Küche & Haushalt", :parent_id=>6}, {:name=>"Textilien", :parent_id=>6}, {:name=>"Möbel", :parent_id=>6}, {:name=>"Dekoration", :parent_id=>6}, {:name=>"Lampen", :parent_id=>6}, {:name=>"Spiegel", :parent_id=>6}, {:name=>"Badezimmer", :parent_id=>6}, {:name=>"Outdoor", :parent_id=>7}, {:name=>"Musikinstrumente", :parent_id=>7}, {:name=>"Reise", :parent_id=>7}, {:name=>"Basteln & Selbermachen", :parent_id=>7}, {:name=>"Spiele", :parent_id=>7}, {:name=>"Sport", :parent_id=>7}, {:name=>"Süßigkeiten", :parent_id=>8}, {:name=>"Öl & Essig", :parent_id=>8}, {:name=>"Kaffee & Tee", :parent_id=>8}, {:name=>"Essen", :parent_id=>8}, {:name=>"Gewürze", :parent_id=>8}, {:name=>"Honig & Konfitüre", :parent_id=>8}, {:name=>"Getränke", :parent_id=>8}, {:name=>"Kosmetik", :parent_id=>9}, {:name=>"Duschen & Baden", :parent_id=>9}, {:name=>"Sonstiges", :parent_id=>9}, {:name=>"Körperpflege", :parent_id=>9}, {:name=>"Antiquitäten", :parent_id=>10}, {:name=>"Kunst", :parent_id=>10}, {:name=>"Fotografien", :parent_id=>10}, {:name=>"Sammeln & Seltenes", :parent_id=>10}, {:name=>"Bekleidung", :parent_id=>12}, {:name=>"Ausstattung", :parent_id=>12}, {:name=>"Spielzeug", :parent_id=>12}, {:name=>"Schuhe", :parent_id=>12}, {:name=>"Handy", :parent_id=>20}, {:name=>"Smartphone", :parent_id=>20}, {:name=>"Festnetztelefonie", :parent_id=>20}, {:name=>"Zubehör", :parent_id=>20}, {:name=>"VHS", :parent_id=>21}, {:name=>"DVD", :parent_id=>21}, {:name=>"Blu-ray", :parent_id=>21}, {:name=>"CD", :parent_id=>22}, {:name=>"weitere Formate", :parent_id=>22}, {:name=>"Vinyl", :parent_id=>22}, {:name=>"Electronic", :parent_id=>26}, {:name=>"Hip Hop/Rap", :parent_id=>26}, {:name=>"Blues", :parent_id=>26}, {:name=>"Rock", :parent_id=>26}, {:name=>"Pop", :parent_id=>26}, {:name=>"Soundtrack", :parent_id=>26}, {:name=>"Folk", :parent_id=>26}, {:name=>"Raritäten", :parent_id=>26}, {:name=>"Alternative", :parent_id=>26}, {:name=>"Kindermusik&Hörspiele", :parent_id=>26}, {:name=>"Indie", :parent_id=>26}, {:name=>"Weihnachten", :parent_id=>26}, {:name=>"Klassik", :parent_id=>26}, {:name=>"Sonstige", :parent_id=>26}, {:name=>"Jazz", :parent_id=>26}, {:name=>"Soul/R&B", :parent_id=>26}, {:name=>"Weltmusik", :parent_id=>27}, {:name=>"Rock", :parent_id=>27}, {:name=>"Singer/Songwriter", :parent_id=>27}, {:name=>"Jazz", :parent_id=>27}, {:name=>"Folk", :parent_id=>27}, {:name=>"Weihnachten", :parent_id=>27}, {:name=>"Soul/R&B", :parent_id=>27}, {:name=>"Soundtrack", :parent_id=>27}, {:name=>"Kindermusik&Hörspiele", :parent_id=>27}, {:name=>"Alternative", :parent_id=>27}, {:name=>"Pop", :parent_id=>27}, {:name=>"Sonstige", :parent_id=>27}, {:name=>"Electronic", :parent_id=>27}, {:name=>"Indie", :parent_id=>27}, {:name=>"Klassik", :parent_id=>27}, {:name=>"Hip Hop/Rap", :parent_id=>27}, {:name=>"T-Shirts", :parent_id=>31}, {:name=>"Pullover", :parent_id=>31}, {:name=>"Jacken & Mäntel", :parent_id=>31}, {:name=>"Weitere", :parent_id=>31}, {:name=>"Longsleeves", :parent_id=>31}, {:name=>"Hemden", :parent_id=>31}, {:name=>"Unterwäsche", :parent_id=>31}, {:name=>"Hosen", :parent_id=>31}, {:name=>"Hosen", :parent_id=>32}, {:name=>"Longsleeves", :parent_id=>32}, {:name=>"Weitere", :parent_id=>32}, {:name=>"T-Shirts & Tops", :parent_id=>32}, {:name=>"Jacken & Mäntel", :parent_id=>32}, {:name=>"Blusen & Tunikas", :parent_id=>32}, {:name=>"Pullover", :parent_id=>32}, {:name=>"Röcke & Kleider", :parent_id=>32}, {:name=>"Unterwäsche", :parent_id=>32}, {:name=>"Gürtel", :parent_id=>33}, {:name=>"Schmuck", :parent_id=>33}, {:name=>"Uhren", :parent_id=>33}, {:name=>"Mützen & Handschuhe", :parent_id=>33}, {:name=>"Tücher & Schals", :parent_id=>33}, {:name=>"Taschen", :parent_id=>33}, {:name=>"Weitere", :parent_id=>33}, {:name=>"Für Frauen", :parent_id=>34}, {:name=>"Für Männer", :parent_id=>34}, {:name=>"Für unisex", :parent_id=>34}, {:name=>"Ansichtskarten", :parent_id=>50}, {:name=>"Körper, Geist, Seele", :parent_id=>56}, {:name=>"Computer & Internet", :parent_id=>56}, {:name=>"eBook-Reader", :parent_id=>56}, {:name=>"Schule & Lernen", :parent_id=>56}, {:name=>"Ratgeber", :parent_id=>56}, {:name=>"Fantasy", :parent_id=>56}, {:name=>"Freizeit, Hobby, Natur", :parent_id=>56}, {:name=>"Biografien", :parent_id=>56}, {:name=>"Reise", :parent_id=>56}, {:name=>"Science Fiction", :parent_id=>56}, {:name=>"Film, Kunst & Kultur", :parent_id=>56}, {:name=>"Business & Karriere", :parent_id=>56}, {:name=>"Fachbücher", :parent_id=>56}, {:name=>"Comics & Manga", :parent_id=>56}, {:name=>"Krimis & Thriller", :parent_id=>56}, {:name=>"Kochbücher & Ernährung", :parent_id=>56}, {:name=>"Romane & Erzählungen", :parent_id=>56}, {:name=>"Hörbücher", :parent_id=>56}, {:name=>"eBooks", :parent_id=>56}, {:name=>"Sachbücher", :parent_id=>56}, {:name=>"Kinder- & Jugendbücher", :parent_id=>56}, {:name=>"Erotik", :parent_id=>56}, {:name=>"Jacken & Mäntel", :parent_id=>76}, {:name=>"Pullover", :parent_id=>76}, {:name=>"Hosen", :parent_id=>76}, {:name=>"T-Shirts", :parent_id=>76}, {:name=>"Hemden", :parent_id=>76}, {:name=>"Weitere", :parent_id=>76}, {:name=>"Puzzles", :parent_id=>85}, {:name=>"Brettspiele", :parent_id=>85}, {:name=>"Gesellschaftsspiele", :parent_id=>85}, {:name=>"Draußen", :parent_id=>85}, {:name=>"Material", :parent_id=>90}, {:name=>"Anleitungen", :parent_id=>90}, {:name=>"Konsole", :parent_id=>100}, {:name=>"PC", :parent_id=>100}, {:name=>"Garten", :parent_id=>103}, {:name=>"Heimwerken", :parent_id=>103}, {:name=>"Büro & Schreibwaren", :parent_id=>103}, {:name=>"Haustierbedarf", :parent_id=>103}, {:name=>"Möbel & Wohnen", :parent_id=>103}, {:name=>"Papier-, Büro- & Schreibwaren", :parent_id=>107}, {:name=>"Schulbedarf", :parent_id=>107}, {:name=>"Elektrogroß- & Haushaltsgeräte", :parent_id=>110}, {:name=>"Glas & Porzellan", :parent_id=>110}, {:name=>"Kleingeräte Haushalt", :parent_id=>110}, {:name=>"Geschichte", :parent_id=>111}, {:name=>"Wörterbücher & Lexika", :parent_id=>111}, {:name=>"Klima & Ökologie", :parent_id=>111}, {:name=>"Wirtschaft & Finanzwesen", :parent_id=>111}, {:name=>"Naturwissenschaften", :parent_id=>111}, {:name=>"Religion & Glaube", :parent_id=>111}, {:name=>"Politik & Gesellschaft", :parent_id=>111}, {:name=>"Tagebücher", :parent_id=>112}, {:name=>"Anthologien", :parent_id=>112}, {:name=>"Humor & Satire", :parent_id=>112}, {:name=>"Gesamtausgaben", :parent_id=>112}, {:name=>"Gedichte & Drama", :parent_id=>112}, {:name=>"Kurzgeschichten", :parent_id=>112}, {:name=>"Märchen & Sagen", :parent_id=>112}, {:name=>"Serien & Reihen", :parent_id=>112}, {:name=>"Liebesromane", :parent_id=>112}, {:name=>"Historische Romane", :parent_id=>112}, {:name=>"Kinderbücher", :parent_id=>113}, {:name=>"Jugendbücher", :parent_id=>113}, {:name=>"Bilderbücher", :parent_id=>113}, {:name=>"Leseanfänger", :parent_id=>113}, {:name=>"Manga", :parent_id=>114}, {:name=>"Comics", :parent_id=>114}, {:name=>"Graphic Novels", :parent_id=>114}, {:name=>"Cartoons", :parent_id=>114}, {:name=>"Thriller", :parent_id=>115}, {:name=>"Regionalkrimis", :parent_id=>115}, {:name=>"Anthologien", :parent_id=>115}, {:name=>"Historische Krimis", :parent_id=>115}, {:name=>"Ratgeber", :parent_id=>116}, {:name=>"Biografien", :parent_id=>116}, {:name=>"Fantasy", :parent_id=>116}, {:name=>"Romane & Erzählungen", :parent_id=>116}, {:name=>"Kinder- & Jugendbücher", :parent_id=>116}, {:name=>"Sachbücher", :parent_id=>116}, {:name=>"Krimis & Thriller", :parent_id=>116}, {:name=>"Fachbücher", :parent_id=>116}, {:name=>"Science Fiction", :parent_id=>116}, {:name=>"Sachbücher", :parent_id=>117}, {:name=>"Fantasy", :parent_id=>117}, {:name=>"Kinder- & Jugendbücher", :parent_id=>117}, {:name=>"Romane & Erzählungen", :parent_id=>117}, {:name=>"Krimis & Thriller", :parent_id=>117}, {:name=>"Biografien", :parent_id=>117}, {:name=>"Ratgeber", :parent_id=>117}, {:name=>"Science Fiction", :parent_id=>117}, {:name=>"Australien", :parent_id=>171}, {:name=>"Afrika", :parent_id=>171}, {:name=>"Bauwerke", :parent_id=>171}, {:name=>"Europa", :parent_id=>171}, {:name=>"Sonstige Motive", :parent_id=>171}, {:name=>"Asien", :parent_id=>171}, {:name=>"Amerika", :parent_id=>171}, {:name=>"Kunst", :parent_id=>180}, {:name=>"Sport", :parent_id=>180}, {:name=>"Literatur", :parent_id=>180}, {:name=>"Wirtschaft", :parent_id=>180}, {:name=>"Politik", :parent_id=>180}, {:name=>"Musik", :parent_id=>180}, {:name=>"Film & Fernsehen", :parent_id=>180}, {:name=>"Star-Köche", :parent_id=>183}, {:name=>"Party & Picknick", :parent_id=>183}, {:name=>"Länderküche", :parent_id=>183}, {:name=>"Koch-Lexika", :parent_id=>183}, {:name=>"Vegetarisch & Vegan", :parent_id=>183}, {:name=>"Backen", :parent_id=>183}, {:name=>"Grundkochbücher", :parent_id=>183}, {:name=>"Desserts", :parent_id=>183}, {:name=>"Vollwertküche", :parent_id=>183}, {:name=>"Schnelle Küche", :parent_id=>183}, {:name=>"Für Babys und Kinder", :parent_id=>183}, {:name=>"Feinschmecker", :parent_id=>183}, {:name=>"Wandern", :parent_id=>184}, {:name=>"Radreisen & Radtouren", :parent_id=>184}, {:name=>"Bildbände", :parent_id=>184}, {:name=>"Karten & Atlanten", :parent_id=>184}, {:name=>"Reiseberichte", :parent_id=>184}, {:name=>"Camping", :parent_id=>184}, {:name=>"Reiseführer", :parent_id=>184}, {:name=>"Garten & Natur", :parent_id=>185}, {:name=>"Heimwerken", :parent_id=>185}, {:name=>"Basteln & Handarbeiten", :parent_id=>185}, {:name=>"Bildbände", :parent_id=>185}, {:name=>"Tierhaltung", :parent_id=>185}, {:name=>"Sport & Fitness", :parent_id=>185}, {:name=>"Lebenshilfe", :parent_id=>186}, {:name=>"Partnerschaft", :parent_id=>186}, {:name=>"Rechtsratgeber", :parent_id=>186}, {:name=>"Geld & Finanzen", :parent_id=>186}, {:name=>"Auto & Verkehr", :parent_id=>186}, {:name=>"Gesundheit", :parent_id=>186}, {:name=>"Einkaufsführer", :parent_id=>186}, {:name=>"Ernährung & Diät", :parent_id=>186}, {:name=>"Eltern & Kinder", :parent_id=>186}, {:name=>"Film & Fernsehen", :parent_id=>187}, {:name=>"Musik", :parent_id=>187}, {:name=>"Photographie", :parent_id=>187}, {:name=>"Theater", :parent_id=>187}, {:name=>"Mode", :parent_id=>187}, {:name=>"Design", :parent_id=>187}, {:name=>"Bildende Kunst", :parent_id=>187}, {:name=>"Bildbände", :parent_id=>187}, {:name=>"Architektur", :parent_id=>187}, {:name=>"Wunscherfüllung", :parent_id=>188}, {:name=>"Meditation & Yoga", :parent_id=>188}, {:name=>"Engel", :parent_id=>188}, {:name=>"Tarot & Orakel", :parent_id=>188}, {:name=>"Astrologie & Sternzeichen", :parent_id=>188}, {:name=>"Energie & Kosmos", :parent_id=>188}, {:name=>"Lehren & Richtungen", :parent_id=>188}, {:name=>"Natur & Steine", :parent_id=>188}, {:name=>"Sprachwissenschaft", :parent_id=>189}, {:name=>"Umweltwissenschaft", :parent_id=>189}, {:name=>"Politikwissenschaft", :parent_id=>189}, {:name=>"Architektur", :parent_id=>189}, {:name=>"Wirtschaft", :parent_id=>189}, {:name=>"Literaturwissenschaft", :parent_id=>189}, {:name=>"Musikwissenschaft", :parent_id=>189}, {:name=>"Chemie", :parent_id=>189}, {:name=>"Biologie", :parent_id=>189}, {:name=>"Medienwissenschaft", :parent_id=>189}, {:name=>"Psychologie", :parent_id=>189}, {:name=>"Informatik", :parent_id=>189}, {:name=>"Theologie", :parent_id=>189}, {:name=>"Kunst", :parent_id=>189}, {:name=>"Ingenieurwissenschaft", :parent_id=>189}, {:name=>"Jura", :parent_id=>189}, {:name=>"Pädagogik", :parent_id=>189}, {:name=>"Soziologie", :parent_id=>189}, {:name=>"Geowissenschaft", :parent_id=>189}, {:name=>"Philosophie", :parent_id=>189}, {:name=>"Technik", :parent_id=>189}, {:name=>"Mathematik", :parent_id=>189}, {:name=>"Didaktik", :parent_id=>189}, {:name=>"Geschichte", :parent_id=>189}, {:name=>"Physik & Astronomie", :parent_id=>189}, {:name=>"Medizin", :parent_id=>189}, {:name=>"Lehrer", :parent_id=>190}, {:name=>"Schulbücher", :parent_id=>190}, {:name=>"Sprachen & Wörterbücher", :parent_id=>190}, {:name=>"Erwachsenenbildung", :parent_id=>190}, {:name=>"Lernhilfen", :parent_id=>190}, {:name=>"Schullektüren", :parent_id=>190}, {:name=>"Künstliche Intelligenz", :parent_id=>191}, {:name=>"Programmierung", :parent_id=>191}, {:name=>"Internet", :parent_id=>191}, {:name=>"Applikation & Software", :parent_id=>191}, {:name=>"Zertifizierung", :parent_id=>191}, {:name=>"Games", :parent_id=>191}, {:name=>"Hardware", :parent_id=>191}, {:name=>"Datenbanken", :parent_id=>191}, {:name=>"Sicherheit", :parent_id=>191}, {:name=>"Betriebssysteme", :parent_id=>191}, {:name=>"Multimedia", :parent_id=>191}, {:name=>"Netzwerke", :parent_id=>191}, {:name=>"Grafik & Design", :parent_id=>191}, {:name=>"Job & Karriere", :parent_id=>192}, {:name=>"Bewerbung", :parent_id=>192}, {:name=>"Mitarbeiterführung", :parent_id=>192}, {:name=>"Management", :parent_id=>192}, {:name=>"Kommunikation", :parent_id=>192}, {:name=>"Unternehmensführung", :parent_id=>192}, {:name=>"Kamasutra", :parent_id=>193}, {:name=>"Bildbände", :parent_id=>193}, {:name=>"Ratgeber", :parent_id=>193}, {:name=>"Romane & Erzählungen", :parent_id=>193}]
  end
end
