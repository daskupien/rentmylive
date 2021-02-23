class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :host_bio, :string
  end
end
