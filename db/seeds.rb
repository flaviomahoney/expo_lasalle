# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting"

first_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(first_photo)
filename = File.basename(URI.parse(first_photo).path)
first = Post.create(description: "Beer", user: User.all.sample)
first.photo.attach(io: file, filename: filename)
first.save


puts "Created"