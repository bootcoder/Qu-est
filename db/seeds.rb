# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



t = Teacher.create(last_name: "Pabico")
s = Student.create(first_name: "hunter",last_name: "chapman")
c = Course.create(name: "bio")


quiz = Quiz.create(name: "popquiz")
question = Question.create(body: "wood chucks chuck")
choice = Choice.create(body: "4", correct: true)