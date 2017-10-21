class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :name, :string
    change_column_null :users, :name, false

    add_column :users, :cpf, :string, index: true, unique: true
    add_column :users, :birth, :date
    add_column :users, :cellphone, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
    add_column :users, :address, :string
  end

  def down
    remove_column :users, :name, :string
    remove_column :users, :username, :string
  end
end
