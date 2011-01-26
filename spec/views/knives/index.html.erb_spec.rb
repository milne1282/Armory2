require 'spec_helper'

describe "/knives/index.html.erb" do
  include KnivesHelper

  before(:each) do
    assigns[:knives] = [
      stub_model(Knife,
        :length => 9.99
      ),
      stub_model(Knife,
        :length => 9.99
      )
    ]
  end

  it "renders a list of knives" do
    render
    response.should have_tag("tr>td", 9.99.to_s, 2)
  end
end
