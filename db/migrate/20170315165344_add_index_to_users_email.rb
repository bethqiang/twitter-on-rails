class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
    # Uses a Rails method called add_index to add an index on the email column of the users table
    add_index :users, :email, unique: true
  end
end
