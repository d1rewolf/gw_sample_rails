# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
100.times do 
  todo = Todo.create(title: Faker::Lorem.word, 
                     detail: Faker::Lorem.words.join(" "),
                     due_date: Faker::Date.forward(days:365))
end
