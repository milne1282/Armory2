class CreateProductInformations < ActiveRecord::Migration
  def self.up
    create_table :product_informations do |t|
      t.string :brand
      t.string :model
      t.string :serial_number
      t.references :product, :polymophic=>true
      
      t.timestamps
    end
  end

  def self.down
    drop_table :product_informations
  end
end
