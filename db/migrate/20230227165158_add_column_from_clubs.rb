class AddColumnFromClubs < ActiveRecord::Migration[7.0]
  def change
    add_column :clubs, :category, :string
  end
end
