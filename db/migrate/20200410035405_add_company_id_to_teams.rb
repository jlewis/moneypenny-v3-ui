class AddCompanyIdToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :company_id, :integer
  end
end
