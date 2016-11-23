class CreateQuestionMiddleTags < ActiveRecord::Migration[5.0]
  def change
    create_table :question_middle_tags do |t|
      t.integer :question_id
      t.integer :middle_tag_id

      t.timestamps
    end

    add_index :question_middle_tags, [:question_id, :middle_tag_id]
  end
end
