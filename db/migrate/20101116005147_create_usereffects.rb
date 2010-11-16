class CreateUsereffects < ActiveRecord::Migration
  def self.up
    create_table :usereffects do |t|
      t.integer :user_id
      t.integer :action_id

      t.timestamps
    end
  end

  def self.down
    drop_table :usereffects
  end
end
