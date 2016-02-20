class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user
      t.integer :user_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
