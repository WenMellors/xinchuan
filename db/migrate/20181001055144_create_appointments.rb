class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :title
      t.date :time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
