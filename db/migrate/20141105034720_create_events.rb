class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.decimal :price
      t.text :description
      t.datetime :starts_at

      t.timestamps
    end
  end
end
