class AddQuestionToAssessments < ActiveRecord::Migration[6.1]
  def change
    add_column :assessments, :question, :string
  end
end
