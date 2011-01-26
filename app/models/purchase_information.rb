class PurchaseInformation < ActiveRecord::Base
  
  belongs_to :purchase, :polymorphic=>true
end
