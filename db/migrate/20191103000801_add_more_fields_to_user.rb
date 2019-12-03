class AddMoreFieldsToUser < ActiveRecord::Migration[5.2]
  using(:users_db)
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :Integer
  end
end
