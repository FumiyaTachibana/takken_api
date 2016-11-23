class CreatePastQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :past_questions do |t|
      t.integer :year_tag_id
      t.integer :big_tag_id
      t.integer :importance
      t.string :difficulty
      t.text :content

      t.timestamps
    end

    add_index :past_questions, [:year_tag_id, :big_tag_id]
    add_index :past_questions, :importance
  end
end
