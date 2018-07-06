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
    class_name: :User
    
  belongs_to :answer_choice, 
    primary_key: :id, 
    foreign_key: :answer_choice_id, 
    class_name: :AnswerChoice
    
  has_one :question,
    through: :answer_choice,
    source: :question
    
  def sibling_responses
    self.question.responses  
    #.where.not('response.id = self.id')
  end
end
