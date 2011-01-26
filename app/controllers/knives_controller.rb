class KnivesController < ApplicationController
  # GET /knives
  # GET /knives.xml
  def index
    @knives = Knife.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @knives }
    end
  end

  # GET /knives/1
  # GET /knives/1.xml
  def show
    @knife = Knife.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @knife }
    end
  end

  # GET /knives/new
  # GET /knives/new.xml
  def new
    @knife = Knife.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @knife }
    end
  end

  # GET /knives/1/edit
  def edit
    @knife = Knife.find(params[:id])
  end

  # POST /knives
  # POST /knives.xml
  def create
    @knife = Knife.new(params[:knife])

    respond_to do |format|
      if @knife.save
        flash[:notice] = 'Knife was successfully created.'
        format.html { redirect_to(@knife) }
        format.xml  { render :xml => @knife, :status => :created, :location => @knife }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @knife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /knives/1
  # PUT /knives/1.xml
  def update
    @knife = Knife.find(params[:id])

    respond_to do |format|
      if @knife.update_attributes(params[:knife])
        flash[:notice] = 'Knife was successfully updated.'
        format.html { redirect_to(@knife) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @knife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /knives/1
  # DELETE /knives/1.xml
  def destroy
    @knife = Knife.find(params[:id])
    @knife.destroy

    respond_to do |format|
      format.html { redirect_to(knives_url) }
      format.xml  { head :ok }
    end
  end
end
