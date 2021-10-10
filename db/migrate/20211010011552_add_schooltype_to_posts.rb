class AddSchooltypeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :schooltype, :integer
  end
end
