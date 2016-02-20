class CreateChoreLists < ActiveRecord::Migration
  def change
    create_table :chore_lists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
