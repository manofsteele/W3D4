class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :poll_id, presence: true 
      t.string :text, presence: true  
    end
  end
end
