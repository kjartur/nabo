class AddPostCodeToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :post_code, :integer
  end
end
