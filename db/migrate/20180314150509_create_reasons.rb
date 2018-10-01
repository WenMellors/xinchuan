class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :name
      t.text :why
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
