require 'faker'
puts "🌱 Seeding..."

a1 = Artist.create first_name: 'Pablo', last_name: 'Picasso', age: 91, location: 'Spain'
a2 = Artist.create first_name: 'Leonardo', last_name: 'DiVinci', age: 67, location: 'Italy'
a3 = Artist.create first_name: 'Rembrandt', last_name: "Harmenszoon van Rijn", age: 63, location: 'Netherlands'
a4 = Artist.create first_name: 'Michelangelo', last_name: "di Lodovico Buonarroti Simoni", age: 88, location: 'Italy'

e1 = Exhibit.create name: 'The Louvre',  location: 'Paris, France', theme: 'Love'
e2 = Exhibit.create name: 'The Museum of Modern Art', location: 'New York, New York, USA', theme: 'War and Peace'
e3 = Exhibit.create name: 'State Hermitage Museum', location: 'St. Petersburg, Russia', theme: 'Rennaissance'
e4 = Exhibit.create name: 'Tate Modern', location: 'London, England', theme: 'Happiness'
e4 = Exhibit.create name: 'Museo Sumaya', location: 'Mexico City, Mexico', theme: 'Ivory'

art1 = Art.create title: 'The Old Guitarist', description: 'The Old Guitarist was created in 1903, during a period when Picasso was believed to be almost bankrupt while living in Barcelona. This time has been dubbed his blue phase, when he painted nearly every canvas in a drab monochromatic palette of blue, a hue that matched the kind of subject matter that he would address.', image_url: 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.pablopicasso.org%2Fimages%2Fpaintings%2Fthe-old-guitarist.jpg&f=1&nofb=1', medium: 'oil on canvas', artist_id: a1.id, exhibit_id: e2.id
art2 = Art.create title: 'Mona Lisa', description: "Mona Lisa, also called Portrait of Lisa Gherardini, wife of Francesco del Giocondo, Italian La Gioconda, or French La Joconde, oil painting on a poplar wood panel by Leonardo da Vinci, probably the world’s most famous painting. It was painted sometime between 1503 and 1519, when Leonardo was living in Florence, and it now hangs in the Louvre Museum, Paris, where it remained an object of pilgrimage in the 21st century. The sitter’s mysterious smile and her unproven identity have made the painting a source of ongoing investigation and fascination.", image_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.overstockart.com%2Foptimized%2Fcache%2Fdata%2Fproduct_images%2FLDV1497-1000x1000.jpg&f=1&nofb=1', artist_id: a2.id, exhibit_id: e2.id, medium: 'oil on canvas'
art3 = Art.create title: 'The Sistine Chapel ceiling', description: 'After being commissioned by Pope Julius II, Michelangelo began working on the ceiling in 1508. The famous Creation of Adam, along with eight other scenes from Genesis, is painted in the central part of the dome. In the next section, the 12 prophets and the sibyls are represented seated on large thrones. Groups of painted figures referring to Christ’s ancestors are painted in the eight spandrels of the ceiling. Lastly, Michelangelo depicted the salvation of Israel in the four pendentives at the corners of the dome.', image_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fexternal-preview.redd.it%2FizezNVXmWTj2Udd9dFNM8ygbSsx8uERJDx0-TB_kdhc.jpg%3Fauto%3Dwebp%26s%3Df1b53a740f6252cebacdcadd61d5168fd720aa67&f=1&nofb=1', medium: 'tiny food', artist_id: a4.id, exhibit_id: e3.id
art4 = Art.create title: 'Rembrandt Self Portrait', description: "Rembrandt's self-portraits were created by the artist looking at himself in a mirror,[16] and the paintings and drawings therefore reverse his actual features. In the etchings the printing process creates a reversed image, and the prints therefore show Rembrandt in the same orientation as he appeared to contemporaries.[17] This is one reason why the hands are usually omitted or 'just cursorily described' in the paintings; they would be on the 'wrong' side if painted from the mirror.[18] References to large mirrors occur at various points from the 1650s, and the later portraits include several showing him at a longer length than before; about 80 cm was the maximum height for a sheet of mirror glass technically possible in Rembrandt's lifetime. One may have been bought about 1652 and then sold in 1656 when he went bankrupt. In 1658 he asked his son Titus to arrange delivery of another one, which broke en route to his house.", image_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fkeyassets.timeincuk.net%2Finspirewp%2Flive%2Fwp-content%2Fuploads%2Fsites%2F8%2F2019%2F03%2FDHW89P.jpg&f=1&nofb=1', medium: 'mosaic', artist_id: a3.id, exhibit_id: e4.id

(1..25).each do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    age = Faker::Number.between(from: 18, to: 100)
    location = Faker::Address.city
    Artist.create first_name: first_name, last_name: last_name, age: age, location: location
end

(1..100).each do
    title = Faker::Lorem.word
    description = Faker::Lorem.paragraph
    image_url = Faker::Avatar.image
    medium = Faker::Lorem.word
    artist_id = Faker::Number.between(from: 4, to: Artist.count)
    exhibit_id = Faker::Number.between(from: 4, to: Exhibit.count)
    Art.create title: title, description: description, image_url: image_url, medium: medium, artist_id: artist_id, exhibit_id: exhibit_id
end




puts "✅ Done seeding!"
