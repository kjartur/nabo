class AddCompletedByOwnerToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :completed_by_owner, :boolean
  end
end
