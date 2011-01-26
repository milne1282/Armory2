require 'spec_helper'

describe "/weapon_infos/index.html.erb" do
  include WeaponInfosHelper

  before(:each) do
    assigns[:weapon_infos] = [
      stub_model(WeaponInfo),
      stub_model(WeaponInfo)
    ]
  end

  it "renders a list of weapon_infos" do
    render
  end
end
