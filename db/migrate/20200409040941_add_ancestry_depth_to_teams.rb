class AddAncestryDepthToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :ancestry_depth, :integer, default: 0
  end
end
