# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.reset_pk_sequence
Event.delete_all
Event.reset_pk_sequence
JoinEvent.delete_all
JoinEvent.reset_pk_sequence


u1 = User.create(fullname: "Jacob Knopf", username: "jmknopf", prof_picture: "https://images.pexels.com/photos/3411134/pexels-photo-3411134.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", bio: "I do what it do.", password: "j")
u2 = User.create(fullname: "Tia Simmons", username: "tsimmons", prof_picture: "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", bio: "I love all animals.", password: "t") 
u3 = User.create(fullname: "Chico Knopf-Simmons", username: "cheetahman", prof_picture: "https://images.pexels.com/photos/573241/pexels-photo-573241.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", bio: "I love people food!", password: "c")

e1 = Event.create(name: "Birthday Bash", picture: "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", description: "We party like it's 1999.", address: "5555 Jacob Road", user_id: 1)
e2 = Event.create(name: "Christmas Party!", picture: "https://images.pexels.com/photos/717988/pexels-photo-717988.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", description: "It's the most wonderufl time of the year.", address: "2222 Candy Cane Lane", user_id: 2)
e3 = Event.create(name: "Family Dinner", picture: "https://images.pexels.com/photos/749386/pexels-photo-749386.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", description: "Let's just get through this.", address: "7777 Family Ave", user_id: 1)

ue1 = JoinEvent.create(user_id: 2, event_id: 1)
ue1 = JoinEvent.create(user_id: 1, event_id: 2)

