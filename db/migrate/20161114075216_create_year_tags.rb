class CreateYearTags < ActiveRecord::Migration[5.0]
  def change
    create_table :year_tags do |t|
      t.string :year

      t.timestamps
    end

    add_index :year_tags, :year
  end
end
