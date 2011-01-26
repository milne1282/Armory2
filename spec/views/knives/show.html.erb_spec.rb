require 'spec_helper'

describe "/knives/show.html.erb" do
  include KnivesHelper
  before(:each) do
    assigns[:knife] = @knife = stub_model(Knife,
      :length => 9.99
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/9\.99/)
  end
end
