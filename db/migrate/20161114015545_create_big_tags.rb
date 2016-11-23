class CreateBigTags < ActiveRecord::Migration[5.0]
  def change
    create_table :big_tags do |t|
      t.string :name

      t.timestamps
    end

    add_index :big_tags, :name
  end
end
