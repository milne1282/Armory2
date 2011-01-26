require 'spec_helper'

describe WeaponInfosController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/weapon_infos" }.should route_to(:controller => "weapon_infos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/weapon_infos/new" }.should route_to(:controller => "weapon_infos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/weapon_infos/1" }.should route_to(:controller => "weapon_infos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/weapon_infos/1/edit" }.should route_to(:controller => "weapon_infos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/weapon_infos" }.should route_to(:controller => "weapon_infos", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/weapon_infos/1" }.should route_to(:controller => "weapon_infos", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/weapon_infos/1" }.should route_to(:controller => "weapon_infos", :action => "destroy", :id => "1") 
    end
  end
end
