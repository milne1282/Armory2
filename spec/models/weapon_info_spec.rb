require 'spec_helper'

describe WeaponInfo do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    WeaponInfo.create!(@valid_attributes)
  end
end
