require 'spec_helper'

describe "/knives/new.html.erb" do
  include KnivesHelper

  before(:each) do
    assigns[:knife] = stub_model(Knife,
      :new_record? => true,
      :length => 9.99
    )
  end

  it "renders new knife form" do
    render

    response.should have_tag("form[action=?][method=post]", knives_path) do
      with_tag("input#knife_length[name=?]", "knife[length]")
    end
  end
end
