class CreatePastQuestionMiddleTags < ActiveRecord::Migration[5.0]
  def change
    create_table :past_question_middle_tags do |t|
      t.integer :past_question_id
      t.integer :middle_tag_id

      t.timestamps
    end

    add_index :past_question_middle_tags, :past_question_id
    add_index :past_question_middle_tags, :middle_tag_id
  end
end
