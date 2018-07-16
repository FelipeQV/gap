class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :time
      t.string :location
      t.string :status
      t.text :description
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
