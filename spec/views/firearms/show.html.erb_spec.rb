require 'spec_helper'

describe "/firearms/show.html.erb" do
  include FirearmsHelper
  before(:each) do
    assigns[:firearm] = @firearm = stub_model(Firearm,
      :caliber => "value for caliber",
      :times_fired => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ caliber/)
    response.should have_text(/1/)
  end
end
