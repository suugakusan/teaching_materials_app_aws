class AddGroupToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :group, :integer
  end
end
