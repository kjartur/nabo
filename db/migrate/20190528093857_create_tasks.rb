class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :address
      t.datetime :date
      t.text :description
      t.integer :amount_coins
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
