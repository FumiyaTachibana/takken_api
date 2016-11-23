class CreateSmallTags < ActiveRecord::Migration[5.0]
  def change
    create_table :small_tags do |t|
      t.integer :big_tag_id
      t.integer :middle_tag_id
      t.string :name

      t.timestamps
    end

    add_index :small_tags, [:big_tag_id, :middle_tag_id]
  end
end
