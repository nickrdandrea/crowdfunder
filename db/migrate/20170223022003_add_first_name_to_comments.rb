class AddFirstNameToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :user_first_name, :string
  end
end
