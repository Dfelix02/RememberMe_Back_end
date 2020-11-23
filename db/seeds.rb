# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
List.destroy_all
Task.destroy_all


test1 = User.create(username: "1", password: "1", email: "1", profile_img: "https://lh3.googleusercontent.com/UAy4M7-LUnjQhc6DTS1WGliYTYWUrqQ78TlbGHaIAn07zsleV0X-UWEoVywvzTwky4omrA=s128", bio: "testing")
list1 = List.create(user: test1)
Task.create(description: "do something", list: list1)
Task.create(description: "learn how to swim", list: list1)
Task.create(description: "play some baseball", list: list1)
Task.create(description: "buy some gifts", list: list1)
Task.create(description: "learn how to dance", list: list1)
Task.create(description: "sleep 24 hours", list: list1)





