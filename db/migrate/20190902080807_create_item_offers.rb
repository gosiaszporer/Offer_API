class CreateItemOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :item_offers do |t|
      t.references :lineItem, foreign_key: false
      t.references :offer, foreign_key: false
      t.integer :quantity

      t.timestamps
    end
  end
end
