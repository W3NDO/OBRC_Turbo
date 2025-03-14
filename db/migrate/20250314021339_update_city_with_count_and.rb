class UpdateCityWithCountAnd < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :count, :integer, default: 0
    change_column :cities, :recent, :double
    change_column :cities, :average, :double
  end
end
