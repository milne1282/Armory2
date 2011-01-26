require 'spec_helper'

describe Knife do
  before(:each) do
    @valid_attributes = {
      :length => 9.99
    }
  end

  it "should create a new instance given valid attributes" do
    Knife.create!(@valid_attributes)
  end
end
