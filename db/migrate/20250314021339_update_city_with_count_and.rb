class UpdateCityWithCountAnd < ActiveRecord::Migration[7.0]
  def change
    change_column :cities, :recent, :double
    change_column :cities, :average, :double

    add_column :cities, :count, :integer, default: 0
    add_column :cities, :minimum, :double
    add_column :cities, :maximum, :double
  end
end
