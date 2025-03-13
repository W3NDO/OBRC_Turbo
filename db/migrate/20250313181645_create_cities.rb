class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :average
      t.integer :recent

      t.timestamps
    end
  end
end
