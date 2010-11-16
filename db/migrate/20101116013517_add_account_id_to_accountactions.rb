class AddAccountIdToAccountactions < ActiveRecord::Migration
  def self.up
    add_column :accountactions, :account_id, :integer
  end

  def self.down
    remove_column :accountactions, :account_id
  end
end
