class AddAvatarBioToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string
    add_column :users, :bio, :text
  end
end
