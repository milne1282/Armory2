class Knife < ActiveRecord::Base
  has_one :weapon_info, :as=>:weapon
  
  accepts_nested_attributes_for :weapon_info, :allow_destroy => true
end
