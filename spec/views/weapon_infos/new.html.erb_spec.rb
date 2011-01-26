require 'spec_helper'

describe "/weapon_infos/new.html.erb" do
  include WeaponInfosHelper

  before(:each) do
    assigns[:weapon_info] = stub_model(WeaponInfo,
      :new_record? => true
    )
  end

  it "renders new weapon_info form" do
    render

    response.should have_tag("form[action=?][method=post]", weapon_infos_path) do
    end
  end
end
