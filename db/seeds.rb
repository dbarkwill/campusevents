# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


event1 = Event.create(name: "Computer Science Camp", start_date: DateTime.new(2014,6,10), end_date: DateTime.new(2014,6,20), url: "http://www.csc.iupui.edu")
event2 = Event.create(name: "IUPUI Welcome Tour", start_date: DateTime.new(2014,8,10), end_date: DateTime.new(2014,8,20), url: "http://www.iupui.edu")
event3 = Event.create(name: "Medical Lab Week", start_date: DateTime.new(2014,7,3), end_date: DateTime.new(2014,7,10), url: "http://www.med.iupui.edu")
event4 = Event.create(name: "Job Fair Week", start_date: DateTime.new(2014,9,10), end_date: DateTime.new(2014,9,10), url: "http://www.jobfair.iupui.edu")

sponsor1 = Sponsor.create!(name: "General Electric")
sponsor2 = Sponsor.create!(name: "LG")
sponsor3 = Sponsor.create!(name: "Sacred Heart")
sponsor4 = Sponsor.create!(name: "General Motors")
sponsor5 = Sponsor.create!(name: "Barns & Noble")

location1 = Location.create(name: "ET301", description: "Computer lab on the third floor of the Engineering/Technology building.", latitude: 39.77396, longitude: -86.17068)
location2 = Location.create(name: "Campus Center", description: "Campus Center where everyone cool hangs out.", latitude: 39.773708, longitude: -86.176180)
location3 = Location.create(name: "Lecture Hall", description: "Place where lectures happen", latitude: 39.772710, longitude: -86.175257)
location4 = Location.create(name: "Hospital", description: "Place where sick people go", latitude: 39.775922, longitude: -86.177022)
location5 = Location.create(name: "IT268", description: "Mac Lab in IT Building", latitude: 39.773827, longitude: -86.168154)


meeting1 = Meeting.create(name: "Networking 101", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))
meeting2 = Meeting.create(name: "Campus Tour", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))
meeting3 = Meeting.create(name: "Meet and Greet Lunch", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))
meeting4 = Meeting.create(name: "Tour of the Hospital", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))
meeting5 = Meeting.create(name: "Medical Panal", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))
meeting6 = Meeting.create(name: "Resume 101", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))
meeting7 = Meeting.create(name: "Meet and Greet", start_time: DateTime.new(2014,6,10,8,0,0), end_time: DateTime.new(2014,6,10,12,0,0))

Attendee.create!(first_name: "Harry", last_name: "Potter", email: "hpotter@hogwarts.edu")
Attendee.create!(first_name: "Walter", last_name: "White", email: "wwhite@graymatter.com")
Attendee.create!(first_name: "Maria", last_name: "LaGuerta", email: "mlaguerta@miamimetro.gov")
Attendee.create!(first_name: "Michael", last_name: "Scott", email: "mscott@dundermifflin.com")

event1.meetings << meeting1
event2.meetings << meeting2
event2.meetings << meeting3
event3.meetings << meeting4
event3.meetings << meeting5
event4.meetings << meeting6
event4.meetings << meeting7

location1.meetings << meeting1
location2.meetings << meeting2
location2.meetings << meeting3
location2.meetings << meeting7
location3.meetings << meeting5
location4.meetings << meeting4
location5.meetings << meeting6

event1.sponsors << sponsor1
event1.sponsors << sponsor2
event2.sponsors << sponsor5
event3.sponsors << sponsor3
event4.sponsors << sponsor4
event4.sponsors << sponsor5

