class AddParentIdToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :parent_id, :integer
  end
end
