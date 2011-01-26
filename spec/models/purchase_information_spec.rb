require 'spec_helper'

describe PurchaseInformation do
  before(:each) do
    @valid_attributes = {
      :date_of_purchase => Date.today,
      :price => 9.99,
      :vendor => "value for vendor"
    }
  end

  it "should create a new instance given valid attributes" do
    PurchaseInformation.create!(@valid_attributes)
  end
end
