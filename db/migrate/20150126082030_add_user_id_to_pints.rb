class AddUserIdToPints < ActiveRecord::Migration
  def change
    add_column :pints, :user_id, :integer
    add_index :pints, :user_id
  end
end
