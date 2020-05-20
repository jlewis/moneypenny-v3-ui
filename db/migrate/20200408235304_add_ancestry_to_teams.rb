class AddAncestryToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :ancestry, :string
    add_index :teams, :ancestry
  end
end
