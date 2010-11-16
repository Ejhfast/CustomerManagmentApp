class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :account_id

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
