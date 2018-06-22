class AddPasswordHashToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_hash, :stringrak
  end
end
