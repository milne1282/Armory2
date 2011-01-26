require 'spec_helper'

describe KnivesController do

  def mock_knife(stubs={})
    @mock_knife ||= mock_model(Knife, stubs)
  end

  describe "GET index" do
    it "assigns all knives as @knives" do
      Knife.stub(:find).with(:all).and_return([mock_knife])
      get :index
      assigns[:knives].should == [mock_knife]
    end
  end

  describe "GET show" do
    it "assigns the requested knife as @knife" do
      Knife.stub(:find).with("37").and_return(mock_knife)
      get :show, :id => "37"
      assigns[:knife].should equal(mock_knife)
    end
  end

  describe "GET new" do
    it "assigns a new knife as @knife" do
      Knife.stub(:new).and_return(mock_knife)
      get :new
      assigns[:knife].should equal(mock_knife)
    end
  end

  describe "GET edit" do
    it "assigns the requested knife as @knife" do
      Knife.stub(:find).with("37").and_return(mock_knife)
      get :edit, :id => "37"
      assigns[:knife].should equal(mock_knife)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created knife as @knife" do
        Knife.stub(:new).with({'these' => 'params'}).and_return(mock_knife(:save => true))
        post :create, :knife => {:these => 'params'}
        assigns[:knife].should equal(mock_knife)
      end

      it "redirects to the created knife" do
        Knife.stub(:new).and_return(mock_knife(:save => true))
        post :create, :knife => {}
        response.should redirect_to(knife_url(mock_knife))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved knife as @knife" do
        Knife.stub(:new).with({'these' => 'params'}).and_return(mock_knife(:save => false))
        post :create, :knife => {:these => 'params'}
        assigns[:knife].should equal(mock_knife)
      end

      it "re-renders the 'new' template" do
        Knife.stub(:new).and_return(mock_knife(:save => false))
        post :create, :knife => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested knife" do
        Knife.should_receive(:find).with("37").and_return(mock_knife)
        mock_knife.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :knife => {:these => 'params'}
      end

      it "assigns the requested knife as @knife" do
        Knife.stub(:find).and_return(mock_knife(:update_attributes => true))
        put :update, :id => "1"
        assigns[:knife].should equal(mock_knife)
      end

      it "redirects to the knife" do
        Knife.stub(:find).and_return(mock_knife(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(knife_url(mock_knife))
      end
    end

    describe "with invalid params" do
      it "updates the requested knife" do
        Knife.should_receive(:find).with("37").and_return(mock_knife)
        mock_knife.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :knife => {:these => 'params'}
      end

      it "assigns the knife as @knife" do
        Knife.stub(:find).and_return(mock_knife(:update_attributes => false))
        put :update, :id => "1"
        assigns[:knife].should equal(mock_knife)
      end

      it "re-renders the 'edit' template" do
        Knife.stub(:find).and_return(mock_knife(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested knife" do
      Knife.should_receive(:find).with("37").and_return(mock_knife)
      mock_knife.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the knives list" do
      Knife.stub(:find).and_return(mock_knife(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(knives_url)
    end
  end

end
