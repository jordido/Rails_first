class AddThingsToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :train, :integer
    add_column :tickets, :customer, :integer
  end
end
