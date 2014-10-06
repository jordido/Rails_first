class AddDestToTrain < ActiveRecord::Migration
  def change
    add_column :trains, :origin, :string
    add_column :trains, :destiny, :string
  end
end
