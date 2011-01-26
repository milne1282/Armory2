require 'spec_helper'

describe KnivesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/knives" }.should route_to(:controller => "knives", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/knives/new" }.should route_to(:controller => "knives", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/knives/1" }.should route_to(:controller => "knives", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/knives/1/edit" }.should route_to(:controller => "knives", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/knives" }.should route_to(:controller => "knives", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/knives/1" }.should route_to(:controller => "knives", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/knives/1" }.should route_to(:controller => "knives", :action => "destroy", :id => "1") 
    end
  end
end
