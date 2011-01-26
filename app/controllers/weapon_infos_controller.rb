class WeaponInfosController < ApplicationController
  # GET /weapon_infos
  # GET /weapon_infos.xml
  def index
    @weapon_infos = WeaponInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weapon_infos }
    end
  end

  # GET /weapon_infos/1
  # GET /weapon_infos/1.xml
  def show
    @weapon_info = WeaponInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weapon_info }
    end
  end

  # GET /weapon_infos/new
  # GET /weapon_infos/new.xml
  def new
    @weapon_info = WeaponInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weapon_info }
    end
  end

  # GET /weapon_infos/1/edit
  def edit
    @weapon_info = WeaponInfo.find(params[:id])
  end

  # POST /weapon_infos
  # POST /weapon_infos.xml
  def create
    @weapon_info = WeaponInfo.new(params[:weapon_info])

    respond_to do |format|
      if @weapon_info.save
        flash[:notice] = 'WeaponInfo was successfully created.'
        format.html { redirect_to(@weapon_info) }
        format.xml  { render :xml => @weapon_info, :status => :created, :location => @weapon_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weapon_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weapon_infos/1
  # PUT /weapon_infos/1.xml
  def update
    @weapon_info = WeaponInfo.find(params[:id])

    respond_to do |format|
      if @weapon_info.update_attributes(params[:weapon_info])
        flash[:notice] = 'WeaponInfo was successfully updated.'
        format.html { redirect_to(@weapon_info) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weapon_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_infos/1
  # DELETE /weapon_infos/1.xml
  def destroy
    @weapon_info = WeaponInfo.find(params[:id])
    @weapon_info.destroy

    respond_to do |format|
      format.html { redirect_to(weapon_infos_url) }
      format.xml  { head :ok }
    end
  end
end
