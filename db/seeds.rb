# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do 
	Movie.create(
		name:Faker::Book.title, 
		year:Faker::Number.within(range: 1900..2019), 
		genre:Faker::Book.genre, 
		synopsis:Faker::Movie.quote, 
		director:Faker::Book.author, 
		allocine_rating:rand(0.0..5.0).round(1), 
		my_rating:nil,
		already_seen:false
	)

end

puts "100 films ont été créés dans la DB"



