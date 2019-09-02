class CreateUserOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_offers do |t|
      t.references :offer, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
