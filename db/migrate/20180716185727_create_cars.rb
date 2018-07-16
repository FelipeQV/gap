class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :maker
      t.string :model
      t.integer :year
      t.string :plate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
