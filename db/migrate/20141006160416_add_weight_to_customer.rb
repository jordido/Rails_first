class AddWeightToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :weight, :number
  end
end
