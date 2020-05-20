class RemoveActsAsNestedSetToTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :parent_id
    remove_column :teams, :lft
    remove_column :teams, :rgt
    remove_column :teams, :depth
    remove_column :teams, :children_count
  end
end
