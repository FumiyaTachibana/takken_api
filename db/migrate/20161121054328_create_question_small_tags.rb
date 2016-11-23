class CreateQuestionSmallTags < ActiveRecord::Migration[5.0]
  def change
    create_table :question_small_tags do |t|
      t.integer :question_id
      t.integer :small_tag_id

      t.timestamps
    end

    add_index :question_small_tags, [:question_id, :small_tag_id]
  end
end
