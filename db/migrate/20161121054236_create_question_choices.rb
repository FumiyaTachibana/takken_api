class CreateQuestionChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :question_choices do |t|
      t.integer :question_id
      t.text :content
      t.string :judgement
      t.text :description

      t.timestamps
    end

    add_index :question_choices, [:question_id, :judgement]
  end
end
