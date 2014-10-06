class AddCapToTrain < ActiveRecord::Migration
  def change
    add_column :trains, :max_capacity, :integer
  end
end
