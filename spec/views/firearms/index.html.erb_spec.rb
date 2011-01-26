require 'spec_helper'

describe "/firearms/index.html.erb" do
  include FirearmsHelper

  before(:each) do
    assigns[:firearms] = [
      stub_model(Firearm,
        :caliber => "value for caliber",
        :times_fired => 1
      ),
      stub_model(Firearm,
        :caliber => "value for caliber",
        :times_fired => 1
      )
    ]
  end

  it "renders a list of firearms" do
    render
    response.should have_tag("tr>td", "value for caliber".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
