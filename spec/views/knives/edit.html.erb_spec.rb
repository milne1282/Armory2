require 'spec_helper'

describe "/knives/edit.html.erb" do
  include KnivesHelper

  before(:each) do
    assigns[:knife] = @knife = stub_model(Knife,
      :new_record? => false,
      :length => 9.99
    )
  end

  it "renders the edit knife form" do
    render

    response.should have_tag("form[action=#{knife_path(@knife)}][method=post]") do
      with_tag('input#knife_length[name=?]', "knife[length]")
    end
  end
end
