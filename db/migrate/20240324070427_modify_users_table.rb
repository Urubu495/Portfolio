class ModifyUsersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :salt, :string
    rename_column :users, :password, :password_digest
  end
end
