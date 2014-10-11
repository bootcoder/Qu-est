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

course1 = Course.create(course_name:"History", course_description: "the history of the world.", teacher_id: teacher1)
course2 = Course.create(course_name:"English", course_description: "taught in the language English.", teacher_id: teacher1)
course3 = Course.create(course_name:"Art", course_description: "taught in the language of art", teacher_id: teacher2)
course4 = Course.create(course_name:"Science", course_description: "taught in the language Science??", teacher_id: teacher2)

test1 = Test.create(course_id: course1, test_name: "History Prerequisites")
test2 = Test.create(course_id:course1, test_name: "Slightly More Advanced History")
test3 = Test.create(course_id:course2, test_name: "Individual Testing")
test4 = Test.create(course_id:course3, test_name: "YOLO")
test5 = Test.create(course_id:course4, test_name: "what?")

question1 = Question.create(question_body:"What fell on Newton's head?", test_id: test1)
question1 << Answer.create(answer_body:"Apple", answer_correct: true)
question1 << Answer.create(answer_body:"Orange", answer_correct: false)
question1 << Answer.create(answer_body:"Rock", answer_correct: false)
question1 << Answer.create(answer_body:"Your mom", answer_correct:false)

question2 = Question.create(question_body:"What is the name of the first president of the United States?", test_id: test1)
question2 << Answer.create(answer_body:"George Bush", answer_correct:false)
question2 << Answer.create(answer_body:"George Washington", answer_correct:true)
question2 << Answer.create(answer_body:"Nadia KG", answer_correct:false)
question2 << Answer.create(answer_body:"Devin Johnson", answer_correct:false)

question3 = Question.create(question_body:"What rhymes with duck?", test_id: test2)
question3 << Answer.create(answer_body: "Muck", answer_correct:false)
question3 << Answer.create(answer_body: "Suck", answer_correct:false)
question3 << Answer.create(answer_body: "Luck", answer_correct:false)
question3 << Answer.create(answer_body: "All of the above", answer_correct:true)

question4 = Question.create(question_body:"How many ounces are in a pound?", test_id: test2)
question4 << Answer.create(answer_body: "16", answer_correct:true)
question4 << Answer.create(answer_body: "10", answer_correct:false)
question4 << Answer.create(answer_body: "5", answer_correct:false)
question4 << Answer.create(answer_body: "not applicable", answer_correct:false)

question5 = Question.create(question_body:"What color do you theoretically get when you mix equal parts of blue and yellow paint?", test_id: test3)
question5 << Answer.create(answer_body: "brown", answer_correct:false)
question5 << Answer.create(answer_body: "pink", answer_correct:false)
question5 << Answer.create(answer_body: "green", answer_correct:true)
question5 << Answer.create(answer_body: "grey", answer_correct:false)


question6 = Question.create(question_body:"Which one of the following is not a mammal?", test_id: test3)
question6 << Answer.create(answer_body: "Bluebird", answer_correct:true)
question6 << Answer.create(answer_body: "Monkey", answer_correct:false)
question6 << Answer.create(answer_body: "Yak", answer_correct:false)
question6 << Answer.create(answer_body: "Llama", answer_correct:false)

question7 = Question.create(question_body:"Which of the following should you never give to someone online?", test_id: test4)
question7 << Answer.create(answer_body: "nickname", answer_correct:false)
question7 << Answer.create(answer_body: "social security number", answer_correct:true)
question7 << Answer.create(answer_body: "birthday month", answer_correct:false)
question7 << Answer.create(answer_body: "favorite color", answer_correct:false)

question8 = Question.create(question_body:"Which of the following is not a starburst flavor?", test_id: test4)
question8 << Answer.create(answer_body: "Lemon", answer_correct:false)
question8 << Answer.create(answer_body: "Cherry", answer_correct:false)
question8 << Answer.create(answer_body: "Pineapple", answer_correct:true)
question8 << Answer.create(answer_body: "Strawberry", answer_correct:false)

question9 = Question.create(question_body:"What is usually not complementary at a hotel?", test_id: test5)
question9 << Answer.create(answer_body: "toothbrush", answer_correct:false)
question9 << Answer.create(answer_body: "laundry service", answer_correct:true)
question9 << Answer.create(answer_body: "water", answer_correct:false)
question9 << Answer.create(answer_body: "soap", answer_correct:false)

question10 = Question.create(question_body:"Doo-bee-doo-bee-doop-doop-doop", test_id: test5)
question10 << Answer.create(answer_body: "Ah-ah-ah", answer_correct:true)
question10 << Answer.create(answer_body: "doop", answer_correct:false)
question10 << Answer.create(answer_body: "beep", answer_correct:false)
question10 << Answer.create(answer_body: "boop", answer_correct:false)