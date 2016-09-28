class ChangeLatAndLngToFloats < ActiveRecord::Migration[5.0]
  def change
    change_column :places, :latitude, :float
    change_column :places, :longitude, :float
  end
end
