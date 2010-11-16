class CreateAccountactions < ActiveRecord::Migration
  def self.up
    create_table :accountactions do |t|
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :accountactions
  end
end
