class AddPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|

      t.timestamps
    end
  end
end
