class CreateCoffeemakers < ActiveRecord::Migration
  def change
    create_table :coffeemakers do |t|
      t.string :make
      t.string :model
      t.string :size
      t.float :capacity
      t.string :heat_source
      t.string :grind

      t.timestamps null: false
    end
  end
end
