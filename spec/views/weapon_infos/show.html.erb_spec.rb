require 'spec_helper'

describe "/weapon_infos/show.html.erb" do
  include WeaponInfosHelper
  before(:each) do
    assigns[:weapon_info] = @weapon_info = stub_model(WeaponInfo)
  end

  it "renders attributes in <p>" do
    render
  end
end
