class AddChoreListIdToChore < ActiveRecord::Migration
  def change
    add_column :chores, :chore_list_id, :integer
  end
end
