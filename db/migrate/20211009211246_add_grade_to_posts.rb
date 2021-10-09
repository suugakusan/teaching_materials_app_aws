class AddGradeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :grade, :integer
    add_column :posts, :schoolbook, :integer
  end
end
