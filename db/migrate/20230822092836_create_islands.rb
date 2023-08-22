class CreateIslands < ActiveRecord::Migration[7.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.text :description
      t.integer :size
      t.integer :number_of_guests
      t.float :price_per_night
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
