# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

User.destroy_all
Poll.destroy_all
Question.destroy_all  
AnswerChoice.destroy_all
Response.destroy_all

  user1 = User.create(username: "Yelrow")
  user2 = User.create(username: "Manofsteele")
  user3 = User.create(username: "SexyRexy")
  

  Poll.create(title: "Awareness study", user_id: user1.id)
  Poll.create(title: "Pre-workout study", user_id: user2.id)
  Poll.create(title: "Sleep research", user_id: user3.id)


  Question.create(poll_id: 1, text: "Question 1")
  Question.create(poll_id: 1, text: "Question 2")
  Question.create(poll_id: 2, text: "Question 1")
  Question.create(poll_id: 2, text: "Question 2")
  Question.create(poll_id: 2, text: "Question 3")
  Question.create(poll_id: 3, text: "Question 1")
  Question.create(poll_id: 3, text: "Question 2")
  
 
  AnswerChoice.create(question_id: 1, text: "Yes")
  AnswerChoice.create(question_id: 1, text: "NO")
  AnswerChoice.create(question_id: 2, text: "Yes")
  AnswerChoice.create(question_id: 2, text: "Hell no")
  AnswerChoice.create(question_id: 3, text: "Yes")
  AnswerChoice.create(question_id: 3, text: "NO")
  AnswerChoice.create(question_id: 4, text: "Yes")
  AnswerChoice.create(question_id: 4, text: "No")

  Response.create(user_id: 2, answer_choice_id: 1)
  Response.create(user_id: 1, answer_choice_id: 7)
  Response.create(user_id: 3, answer_choice_id: 4)
  Response.create(user_id: 3, answer_choice_id: 4)
  Response.create(user_id: 2, answer_choice_id: 2)
  Response.create(user_id: 1, answer_choice_id: 3)
end
