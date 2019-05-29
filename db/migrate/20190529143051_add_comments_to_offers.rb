class AddCommentsToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :comments, :text
  end
end
