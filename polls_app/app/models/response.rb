# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer
#

class Response < ApplicationRecord
  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :user
    
  belongs_to :answer_choice, 
    primary_key: :id, 
    foreign_key: :answer_choice_id, 
    class_name: :AnswerChoice
end
