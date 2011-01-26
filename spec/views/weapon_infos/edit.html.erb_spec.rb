require 'spec_helper'

describe "/weapon_infos/edit.html.erb" do
  include WeaponInfosHelper

  before(:each) do
    assigns[:weapon_info] = @weapon_info = stub_model(WeaponInfo,
      :new_record? => false
    )
  end

  it "renders the edit weapon_info form" do
    render

    response.should have_tag("form[action=#{weapon_info_path(@weapon_info)}][method=post]") do
    end
  end
end
