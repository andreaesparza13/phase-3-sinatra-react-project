puts "🌱 Seeding..."

u1 = Artist.create first_name: 'Pablo', last_name: 'Picasso' age: 91, location: 'Spain'
u2 = Artist.create first_name: 'Leonardo', last_name: 'DiVinci' age: 67, location: 'Italy'
u3 = Artist.create first_name: 'Rembrandt', last_name: "Harmenszoon van Rijn", age: 63, location: 'Netherlands'
u4 = Artist.create first_name: 'Michelangelo', last_name: "di Lodovico Buonarroti Simoni", age: 88, location: 'Italy'

e1 = Exhibit.create name: 'The Louvre',  location: 'Paris, France', theme: 'Love'
e2 = Exhibit.create name: 'The Museum of Modern Art', location: 'New York, New York, USA', theme: 'War and Peace'
e3 = Exhibit.create name: 'State Hermitage Museum', location: 'St. Petersburg, Russia', theme: 'Rennaissance'
e4 = Exhibit.create name: 'Tate Modern', location: 'London, England', theme: 'Happiness'

a1 = Art.create title: 'The Old Guitarist', description: 'The Old Guitarist was created in 1903, during a period when Picasso was believed to be almost bankrupt while living in Barcelona. This time has been dubbed his blue phase, when he painted nearly every canvas in a drab monochromatic palette of blue, a hue that matched the kind of subject matter that he would address.', image_url: 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.pablopicasso.org%2Fimages%2Fpaintings%2Fthe-old-guitarist.jpg&f=1&nofb=1', madium: 'oil on canvas' artist_id: a1.id, exhibit_id: e1.id
a2 = Art.create title: 'Mona Lisa', description: "Mona Lisa, also called Portrait of Lisa Gherardini, wife of Francesco del Giocondo, Italian La Gioconda, or French La Joconde, oil painting on a poplar wood panel by Leonardo da Vinci, probably the world’s most famous painting. It was painted sometime between 1503 and 1519, when Leonardo was living in Florence, and it now hangs in the Louvre Museum, Paris, where it remained an object of pilgrimage in the 21st century. The sitter’s mysterious smile and her unproven identity have made the painting a source of ongoing investigation and fascination.", image_url: '', artist_id: a2.id, exhibit_id: e1.id, medium: 'oil on canvas'
a3 = Art.create title: 'The Sistine Chapel ceiling', description: 'After being commissioned by Pope Julius II, Michelangelo began working on the ceiling in 1508. The famous Creation of Adam, along with eight other scenes from Genesis, is painted in the central part of the dome. In the next section, the 12 prophets and the sibyls are represented seated on large thrones. Groups of painted figures referring to Christ’s ancestors are painted in the eight spandrels of the ceiling. Lastly, Michelangelo depicted the salvation of Israel in the four pendentives at the corners of the dome.', image_url: '', medium: 'tiny food', artist_id: a3.id, exhibit_id: e3.id
a4 = Art.create title: 'Longitude', description: 'Longitude is a longitude', image_url: '', medium: 'mosaic', artist_id: a3.id, exhibit_id: e3.id

comment1 = Comment.create comment: 'Neat', user_id: u1.id, art_id: a1.id
comment2 = Comment.create comment: 'How abstract', user_id: u2.id, art_id: a2.id
comment3 = Comment.create comment: 'Cool beans', user_id: u3.id, art_id: a3.id
comment4 = Comment.create comment: 'Cool beans', user_id: u3.id, art_id: a3.id

puts "✅ Done seeding!"
