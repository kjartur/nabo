class AddCompletedByHelperToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :completed_by_helper, :boolean
  end
end
