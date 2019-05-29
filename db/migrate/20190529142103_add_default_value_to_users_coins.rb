class AddDefaultValueToUsersCoins < ActiveRecord::Migration[5.2]
  def change
   change_column_default :users, :coins, 5
  end
end
