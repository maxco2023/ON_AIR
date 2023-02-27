class AddNameToClubs < ActiveRecord::Migration[7.0]
  def change
    add_column :clubs, :name, :string
  end
end
