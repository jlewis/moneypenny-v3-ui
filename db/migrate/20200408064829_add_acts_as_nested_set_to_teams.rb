class AddActsAsNestedSetToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :parent_id, :integer
    add_column :teams, :lft, :integer
    add_column :teams, :rgt, :integer

    # optional fields
    add_column :teams, :depth, :integer
    add_column :teams, :children_count, :integer
    
    # This is necessary to update :lft and :rgt columns
    Team.reset_column_information
    Team.rebuild!
  end
end
