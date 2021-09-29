# This file should contain all the record creation needed to seed the database with its default values.
require ‘faker’
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	movie1 = Movie.create([{ title: 'hazalın çilesi', description: 'hazal bu appi bitirebilecek mi yoksa bitiremeyecek mi?', movie_length: '190 dakila', director: 'allah', rating: 10 }])
	Genre.create(name: "Action")
	Genre.create(name: "Comedy")
	Genre.create(name: "Drama")
	Genre.create(name: "Romance")
	Genre.create(name: "Thriller")
	Genre.create(name: "Fantasy")
	Genre.create(name: "Documentary")
	Genre.create(name: "Adventure")
	Genre.create(name: "Animation")
	Genre.create(name: "Sci-Fi")
