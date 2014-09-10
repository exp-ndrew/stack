class AddQuestionId < ActiveRecord::Migration
  def change
    add_column :responses, :question_id, :integer
    add_column :questions, :content, :text
  end
end
