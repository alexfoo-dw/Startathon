class AddWinnerToChoreList < ActiveRecord::Migration
  def change
    add_column :chore_lists, :winner, :string
  end
end
