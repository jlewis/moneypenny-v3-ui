class RemoveParentIdFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :parent_id, :integer
  end
end
