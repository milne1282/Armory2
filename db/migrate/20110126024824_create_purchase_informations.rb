class CreatePurchaseInformations < ActiveRecord::Migration
  def self.up
    create_table :purchase_informations do |t|
      t.date :date_of_purchase
      t.decimal :price
      t.string :vendor
      t.references :purchase, :polymorphic=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :purchase_informations
  end
end
