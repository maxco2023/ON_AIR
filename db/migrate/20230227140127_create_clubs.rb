class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :address
      t.text :description
      t.string :phone_number
      t.string :type
      t.integer :capacity
      t.float :hour_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
