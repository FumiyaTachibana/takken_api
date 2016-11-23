class CreateTerminologies < ActiveRecord::Migration[5.0]
  def change
    create_table :terminologies do |t|
      t.integer :big_tag_id
      t.integer :middle_tag_id
      t.integer :small_tag_id
      t.string :word
      t.text :description

      t.timestamps
    end

    add_index :terminologies, [:big_tag_id, :middle_tag_id]
    add_index :terminologies, [:small_tag_id, :word]
  end
end
