class CreateUsers < ActiveRecord::Migration[5.0]
  # change method determines the change to be made to the database
  def change
    # create_table is a Rails method
    create_table :users do |t|
      t.string :name
      t.string :email

      # Creates created_at and upated_at columns
      t.timestamps
    end
  end
end
