class AddLimitToRewards < ActiveRecord::Migration[5.0]
  def change
    add_column :rewards, :limit, :integer
  end
end
