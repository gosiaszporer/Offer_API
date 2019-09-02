class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fullName
      t.string :emailAdress

      t.timestamps
    end
  end
end
