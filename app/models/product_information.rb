class ProductInformation < ActiveRecord::Base
  
  belongs_to :product, :polymorphic=>true
end
