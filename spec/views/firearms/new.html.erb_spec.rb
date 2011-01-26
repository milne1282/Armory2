require 'spec_helper'

describe "/firearms/new.html.erb" do
  include FirearmsHelper

  before(:each) do
    assigns[:firearm] = stub_model(Firearm,
      :new_record? => true,
      :caliber => "value for caliber",
      :times_fired => 1
    )
  end

  it "renders new firearm form" do
    render

    response.should have_tag("form[action=?][method=post]", firearms_path) do
      with_tag("input#firearm_caliber[name=?]", "firearm[caliber]")
      with_tag("input#firearm_times_fired[name=?]", "firearm[times_fired]")
    end
  end
end
