class AddTitleToAccountactions < ActiveRecord::Migration
  def self.up
    add_column :accountactions, :title, :string
  end

  def self.down
    remove_column :accountactions, :title
  end
end
