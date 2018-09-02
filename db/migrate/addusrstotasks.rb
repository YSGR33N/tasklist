class AddUserToTasks < ActiveRecord::Migration[5.0]
  belongs_to :user
  
  def change
    add_reference :tasks, :user, foreign_key: true
  end
end
