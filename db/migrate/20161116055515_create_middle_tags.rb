class CreateMiddleTags < ActiveRecord::Migration[5.0]
  def change
    create_table :middle_tags do |t|
      t.integer :big_tag_id
      t.string :name
      t.integer :importance

      t.timestamps
    end

    add_index :middle_tags, [:big_tag_id, :name, :importance]
  end
end
