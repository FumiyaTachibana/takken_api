class CreatePastQuestionChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :past_question_choices do |t|
      t.integer :past_question_id
      t.text :content
      t.string :judgement
      t.text :description

      t.timestamps
    end

    add_index :past_question_choices, [:past_question_id, :judgement]
  end
end
