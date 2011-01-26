class WeaponInfo < ActiveRecord::Base
  has_one :product_information, :as=>:product
  has_one :purchase_information, :as=>:purchase
  
  accepts_nested_attributes_for :product_information, :purchase_information
  
  belongs_to :weapon, :polymorphic=>true
end
