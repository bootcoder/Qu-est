
teacher1 = {
  first_name: "Jon",
  last_name: "Pabico",
  email: "jon@example.com",
  phone: 9999999999
  password: "YOLO"
}
teacher2 = {
  first_name: "Nadia",
  last_name: "KG",
  email: "nadia@example.com",
  phone: 1111111111
  password: "YOLO"
}
student1 = {
  first_name: "Allison",
  last_name: "Wong",
  email: "allison@example.com",
  phone: 9999999999
  password: "YOLO"
}
student2 = {
  first_name: "Hunter",
  last_name: "Milli",
  email: "hunter@example.com",
  phone: 1111111111
  password: "YOLO"
}
student3 = {
  first_name: "Devin",
  last_name: "Johnson",
  email: "ddevin@example.com",
  phone: 1111111111
  password: "YOLO"
}

teacher1 = Teacher.create(teacher1)
teacher2 = Teacher.create(teacher2)

student1 = Student.create(student1)
student2 = Student.create(student2)
student3 = Student.create(student3)

course1 = Course.create(name:"History", description: "the history of the world.", teacher_id: teacher1)
course2 = Course.create(name:"English", description: "taught in the language English.", teacher_id: teacher1)
course3 = Course.create(name:"Art", description: "taught in the language of art", teacher_id: teacher2)
course4 = Course.create(name:"Science", description: "taught in the language Science??", teacher_id: teacher2)

quiz1 = Quiz.create(course_id: course1, name: "History Prerequisites")
quiz2 = Quiz.create(course_id:course1, name: "Slightly More Advanced History")
quiz3 = Quiz.create(course_id:course2, name: "No way")
quiz4 = Quiz.create(course_id:course3, name: "YOLO")
quiz5 = Quiz.create(course_id:course4, name: "what?")

question1 = Question.create(body:"What fell on Newton's head?", quiz_id: quiz1)
question1 << Choice.create(body:"Apple", correct: true)
question1 << Choice.create(body:"Orange", correct: false)
question1 << Choice.create(body:"Rock", correct: false)
question1 << Choice.create(body:"Your mom", correct:false)

question2 = Question.create(body:"What is the name of the first president of the United States?", quiz_id: quiz1)
question2 << Choice.create(body:"George Bush", correct:false)
question2 << Choice.create(body:"George Washington", correct:true)
question2 << Choice.create(body:"Nadia KG", correct:false)
question2 << Choice.create(body:"Devin Johnson", correct:false)

question3 = Question.create(body:"What rhymes with duck?", quiz_id: quiz2)
question3 << Choice.create(body: "Muck", correct:false)
question3 << Choice.create(body: "Suck", correct:false)
question3 << Choice.create(body: "Luck", correct:false)
question3 << Choice.create(body: "All of the above", correct:true)

question4 = Question.create(body:"How many ounces are in a pound?", quiz_id: quiz2)
question4 << Choice.create(body: "16", correct:true)
question4 << Choice.create(body: "10", correct:false)
question4 << Choice.create(body: "5", correct:false)
question4 << Choice.create(body: "not applicable", correct:false)

question5 = Question.create(body:"What color do you theoretically get when you mix equal parts of blue and yellow paint?", quiz_id: quiz3)
question5 << Choice.create(body: "brown", correct:false)
question5 << Choice.create(body: "pink", correct:false)
question5 << Choice.create(body: "green", correct:true)
question5 << Choice.create(body: "grey", correct:false)


question6 = Question.create(body:"Which one of the following is not a mammal?", quiz_id: quiz3)
question6 << Choice.create(body: "Bluebird", correct:true)
question6 << Choice.create(body: "Monkey", correct:false)
question6 << Choice.create(body: "Yak", correct:false)
question6 << Choice.create(body: "Llama", correct:false)

question7 = Question.create(body:"Which of the following should you never give to someone online?", quiz_id: quiz4)
question7 << Choice.create(body: "nickname", correct:false)
question7 << Choice.create(body: "social security number", correct:true)
question7 << Choice.create(body: "birthday month", correct:false)
question7 << Choice.create(body: "favorite color", correct:false)

question8 = Question.create(body:"Which of the following is not a starburst flavor?", quiz_id: quiz4)
question8 << Choice.create(body: "Lemon", correct:false)
question8 << Choice.create(body: "Cherry", correct:false)
question8 << Choice.create(body: "Pineapple", correct:true)
question8 << Choice.create(body: "Strawberry", correct:false)

question9 = Question.create(body:"What is usually not complementary at a hotel?", quiz_id: quiz5)
question9 << Choice.create(body: "toothbrush", correct:false)
question9 << Choice.create(body: "laundry service", correct:true)
question9 << Choice.create(body: "water", correct:false)
question9 << Choice.create(body: "soap", correct:false)

question10 = Question.create(body:"Doo-bee-doo-bee-doop-doop-doop", quiz_id: quiz5)
question10 << Choice.create(body: "Ah-ah-ah", correct:true)
question10 << Choice.create(body: "doop", correct:false)
question10 << Choice.create(body: "beep", correct:false)
question10 << Choice.create(body: "boop", correct:false)

