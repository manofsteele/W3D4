class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :title, presence: true
      t.integer :user_id, presence: true
    end
  end
end
