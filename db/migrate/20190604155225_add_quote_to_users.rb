class AddQuoteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :quote, :text
  end
end
