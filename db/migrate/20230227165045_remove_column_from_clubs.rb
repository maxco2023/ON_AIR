class RemoveColumnFromClubs < ActiveRecord::Migration[7.0]
  def change
    remove_column :clubs, :type
  end
end
