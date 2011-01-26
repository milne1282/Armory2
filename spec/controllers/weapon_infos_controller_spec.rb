require 'spec_helper'

describe WeaponInfosController do

  def mock_weapon_info(stubs={})
    @mock_weapon_info ||= mock_model(WeaponInfo, stubs)
  end

  describe "GET index" do
    it "assigns all weapon_infos as @weapon_infos" do
      WeaponInfo.stub(:find).with(:all).and_return([mock_weapon_info])
      get :index
      assigns[:weapon_infos].should == [mock_weapon_info]
    end
  end

  describe "GET show" do
    it "assigns the requested weapon_info as @weapon_info" do
      WeaponInfo.stub(:find).with("37").and_return(mock_weapon_info)
      get :show, :id => "37"
      assigns[:weapon_info].should equal(mock_weapon_info)
    end
  end

  describe "GET new" do
    it "assigns a new weapon_info as @weapon_info" do
      WeaponInfo.stub(:new).and_return(mock_weapon_info)
      get :new
      assigns[:weapon_info].should equal(mock_weapon_info)
    end
  end

  describe "GET edit" do
    it "assigns the requested weapon_info as @weapon_info" do
      WeaponInfo.stub(:find).with("37").and_return(mock_weapon_info)
      get :edit, :id => "37"
      assigns[:weapon_info].should equal(mock_weapon_info)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created weapon_info as @weapon_info" do
        WeaponInfo.stub(:new).with({'these' => 'params'}).and_return(mock_weapon_info(:save => true))
        post :create, :weapon_info => {:these => 'params'}
        assigns[:weapon_info].should equal(mock_weapon_info)
      end

      it "redirects to the created weapon_info" do
        WeaponInfo.stub(:new).and_return(mock_weapon_info(:save => true))
        post :create, :weapon_info => {}
        response.should redirect_to(weapon_info_url(mock_weapon_info))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved weapon_info as @weapon_info" do
        WeaponInfo.stub(:new).with({'these' => 'params'}).and_return(mock_weapon_info(:save => false))
        post :create, :weapon_info => {:these => 'params'}
        assigns[:weapon_info].should equal(mock_weapon_info)
      end

      it "re-renders the 'new' template" do
        WeaponInfo.stub(:new).and_return(mock_weapon_info(:save => false))
        post :create, :weapon_info => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested weapon_info" do
        WeaponInfo.should_receive(:find).with("37").and_return(mock_weapon_info)
        mock_weapon_info.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :weapon_info => {:these => 'params'}
      end

      it "assigns the requested weapon_info as @weapon_info" do
        WeaponInfo.stub(:find).and_return(mock_weapon_info(:update_attributes => true))
        put :update, :id => "1"
        assigns[:weapon_info].should equal(mock_weapon_info)
      end

      it "redirects to the weapon_info" do
        WeaponInfo.stub(:find).and_return(mock_weapon_info(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(weapon_info_url(mock_weapon_info))
      end
    end

    describe "with invalid params" do
      it "updates the requested weapon_info" do
        WeaponInfo.should_receive(:find).with("37").and_return(mock_weapon_info)
        mock_weapon_info.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :weapon_info => {:these => 'params'}
      end

      it "assigns the weapon_info as @weapon_info" do
        WeaponInfo.stub(:find).and_return(mock_weapon_info(:update_attributes => false))
        put :update, :id => "1"
        assigns[:weapon_info].should equal(mock_weapon_info)
      end

      it "re-renders the 'edit' template" do
        WeaponInfo.stub(:find).and_return(mock_weapon_info(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested weapon_info" do
      WeaponInfo.should_receive(:find).with("37").and_return(mock_weapon_info)
      mock_weapon_info.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the weapon_infos list" do
      WeaponInfo.stub(:find).and_return(mock_weapon_info(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(weapon_infos_url)
    end
  end

end
