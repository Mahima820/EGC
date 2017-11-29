# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
{
	id: 1,
	fname: "kevin",
	lname: "gallagher",
	location: "New York",
	interest: "Sports",
	photo: open('https://media-cdn.tripadvisor.com/media/photo-s/03/06/6e/08/the-iron-horse-nyc.jpg'),
	resume: "blah",
	cover_letter: "blah",
	email: "kevin@gallagher.com",
	password: "testtest"
}




	])