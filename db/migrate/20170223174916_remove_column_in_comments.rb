class RemoveColumnInComments < ActiveRecord::Migration[5.0]
  def up
    remove_column :comments, :user_first_name
  end
  def down
    add_column :comments, :user_first_name, :string
  end
end
