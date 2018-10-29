# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
city = City.create(name: 'Lviv')
university = University.create(name: 'polytekh', city: city)
faculty = Faculty.create(title: 'PZ', university: university)
specialty = Specialty.create(title: 'PZ', faculty: faculty)
group = Group.create(title: 'PZ-26', specialty: specialty)
admin = Student.create(first_name: "Admin", last_name: 'Admin', surname: nil, birth_date: Date.current, year_of_study: nil, role: '1', group_id: group.id, email: "admifdn@gmail.com", password: '123456')