teacher1 = {
  first_name: "Jon",
  last_name: "Pabico",
  email: "jon@example.com",
  phone: 9999999999,
  password: "YOLO"
}
teacher2 = {
  first_name: "Nadia",
  last_name: "KG",
  email: "nadia@example.com",
  phone: 1111111111,
  password: "YOLO"
}
student1 = {
  first_name: "Allison",
  last_name: "Wong",
  email: "allison@example.com",
  phone: 9999999999,
  password: "YOLO"
}
student2 = {
  first_name: "Hunter",
  last_name: "Milli",
  email: "hunter@example.com",
  phone: 1111111111,
  password: "YOLO"
}
student3 = {
  first_name: "Devin",
  last_name: "Johnson",
  email: "ddevin@example.com",
  phone: 1111111111,
  password: "YOLO"
}

teacher1 = Teacher.create(teacher1)
teacher2 = Teacher.create(teacher2)

student1 = Student.create(student1)
student2 = Student.create(student2)
student3 = Student.create(student3)

course1 = Course.create(name:"History", description: "the history of the world.", teacher_id: teacher1.id)
course2 = Course.create(name:"English", description: "taught in the language English.", teacher_id: teacher1.id)
course3 = Course.create(name:"Art", description: "taught in the language of art", teacher_id: teacher2.id)
course4 = Course.create(name:"Science", description: "taught in the language Science??", teacher_id: teacher2.id)

quiz1 = Quiz.create(course_id: course1.id, name: "History Prerequisites")
quiz2 = Quiz.create(course_id:course1.id, name: "Slightly More Advanced History")
quiz3 = Quiz.create(course_id:course2.id, name: "No way")
quiz4 = Quiz.create(course_id:course3.id, name: "YOLO")
quiz5 = Quiz.create(course_id:course4.id, name: "what?")

question1 = Question.create(body:"What fell on Newton's head?", quiz_id: quiz1.id)
Choice.create(body:"Apple", correct: true, question_id: question1.id)
Choice.create(body:"Orange", correct: false, question_id: question1.id)
Choice.create(body:"Rock", correct: false, question_id: question1.id)
Choice.create(body:"Your mom", correct:false, question_id: question1.id)

question2 = Question.create(body:"What is the name of the first president of the United States?", quiz_id: quiz1.id)
Choice.create(body:"George Bush", correct:false, question_id: question2.id)
Choice.create(body:"George Washington", correct:true, question_id: question2.id)
Choice.create(body:"Nadia KG", correct:false, question_id: question2.id)
Choice.create(body:"Devin Johnson", correct:false, question_id: question2.id)

question3 = Question.create(body:"What rhymes with duck?", quiz_id: quiz2.id)
Choice.create(body: "Muck", correct:false, question_id: question3.id)
Choice.create(body: "Suck", correct:false, question_id: question3.id)
Choice.create(body: "Luck", correct:false, question_id: question3.id)
Choice.create(body: "All of the above", correct:true, question_id: question3.id)

question4 = Question.create(body:"How many ounces are in a pound?", quiz_id: quiz2.id)
Choice.create(body: "16", correct:true, question_id: question4.id)
Choice.create(body: "10", correct:false, question_id: question4.id)
Choice.create(body: "5", correct:false, question_id: question4.id)
Choice.create(body: "not applicable", correct:false, question_id: question4.id)

question5 = Question.create(body:"What color do you theoretically get when you mix equal parts of blue and yellow paint?", quiz_id: quiz3)
Choice.create(body: "brown", correct:false, question_id: question5.id)
Choice.create(body: "pink", correct:false, question_id: question5.id)
Choice.create(body: "green", correct:true, question_id: question5.id)
Choice.create(body: "grey", correct:false, question_id: question5.id)


question6 = Question.create(body:"Which one of the following is not a mammal?", quiz_id: quiz3.id)
Choice.create(body: "Bluebird", correct:true, question_id: question6.id)
Choice.create(body: "Monkey", correct:false, question_id: question6.id)
Choice.create(body: "Yak", correct:false, question_id: question6.id)
Choice.create(body: "Llama", correct:false, question_id: question6.id)

question7 = Question.create(body:"Which of the following should you never give to someone online?", quiz_id: quiz4.id)
Choice.create(body: "nickname", correct:false, question_id: question7.id)
Choice.create(body: "social security number", correct:true, question_id: question7.id)
Choice.create(body: "birthday month", correct:false, question_id: question7.id)
Choice.create(body: "favorite color", correct:false, question_id: question7.id)

question8 = Question.create(body:"Which of the following is not a starburst flavor?", quiz_id: quiz4.id)
Choice.create(body: "Lemon", correct:false, question_id: question8.id)
Choice.create(body: "Cherry", correct:false, question_id: question8.id)
Choice.create(body: "Pineapple", correct:true, question_id: question8.id)
Choice.create(body: "Strawberry", correct:false, question_id: question8.id)

question9 = Question.create(body:"What is usually not complementary at a hotel?", quiz_id: quiz5.id)
Choice.create(body: "toothbrush", correct:false, question_id: question9.id)
Choice.create(body: "laundry service", correct:true, question_id: question9.id)
Choice.create(body: "water", correct:false, question_id: question9.id)
Choice.create(body: "soap", correct:false, question_id: question9.id)

question10 = Question.create(body:"Doo-bee-doo-bee-doop-doop-doop", quiz_id: quiz5.id)
Choice.create(body: "Ah-ah-ah", correct:true, question_id: question10.id)
Choice.create(body: "doop", correct:false, question_id: question10.id)
Choice.create(body: "beep", correct:false, question_id: question10.id)
Choice.create(body: "boop", correct:false, question_id: question10.id)

>>>>>>> Stashed changes
