puts "🌱 Seeding spices..."

u1 = User.create username: 'Picasso', password_digest:  'qqqq123', email: "PabloP81@gmail.com"
u2 = User.create username: 'Miguel', password_digest: 'Mexico123', email: "MiguelM@gmail.com"
u3 = User.create username: 'Rembrandt', password_digest: 'Netherlands123', email: "rembrant@gmail.com"

c1 = Category.create category_name: 'Spice', image_url: 'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
c2 = Category.create category_name: 'Nature', image_url: ''
c3 = Category.create category_name: 'Longitude', image_url: ''

a1 = Art.create title: 'Spice', description: 'Spice is a spice', price: '$1.00', image_url: 'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', user_id: u1.id, category_id: c1.id
a2 = Art.create title: 'Nature', description: 'Nature is a nature', price: '$2.00', image_url: '', user_id: u2.id, category_id: c2.id
a3 = Art.create title: 'Longitude', description: 'Longitude is a longitude', price: '$3.00', image_url: '', user_id: u3.id, category_id: c3.id

puts "✅ Done seeding!"
