# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting"


Post.destroy_all

first_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(first_photo)
filename = File.basename(URI.parse(first_photo).path)
first = Post.create(description: "Beer", user: User.all.sample)
first.photo.attach(io: file, filename: filename)
first.save

second_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(second_photo)
filename = File.basename(URI.parse(second_photo).path)
second = Post.create(description: "Beer", user: User.all.sample)
second.photo.attach(io: file, filename: filename)
second.save

third_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(third_photo)
filename = File.basename(URI.parse(third_photo).path)
third = Post.create(description: "Beer", user: User.all.sample)
third.photo.attach(io: file, filename: filename)
third.save

fourth_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(fourth_photo)
filename = File.basename(URI.parse(fourth_photo).path)
fourth = Post.create(description: "Beer", user: User.all.sample)
fourth.photo.attach(io: file, filename: filename)
fourth.save

fifth_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(fifth_photo)
filename = File.basename(URI.parse(fifth_photo).path)
fifth = Post.create(description: "Beer", user: User.all.sample)
fifth.photo.attach(io: file, filename: filename)
fifth.save

six_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(six_photo)
filename = File.basename(URI.parse(six_photo).path)
six = Post.create(description: "Beer", user: User.all.sample)
six.photo.attach(io: file, filename: filename)
six.save


puts "Created"