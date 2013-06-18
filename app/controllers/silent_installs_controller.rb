class SilentInstallsController < ApplicationController
  # GET /silent_installs
  # GET /silent_installs.json
  def index
    @silent_installs = SilentInstall.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @silent_installs }
    end
  end

  # GET /silent_installs/1
  # GET /silent_installs/1.json
  def show
    @silent_install = SilentInstall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @silent_install }
    end
  end

  # GET /silent_installs/new
  # GET /silent_installs/new.json
  def new
    @silent_install = SilentInstall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @silent_install }
    end
  end

  # GET /silent_installs/1/edit
  def edit
    @silent_install = SilentInstall.find(params[:id])
  end

  # POST /silent_installs
  # POST /silent_installs.json
  def create
    @silent_install = SilentInstall.new(params[:silent_install])

    respond_to do |format|
      if @silent_install.save
        format.html { redirect_to @silent_install, notice: 'Silent install was successfully created.' }
        format.json { render json: @silent_install, status: :created, location: @silent_install }
      else
        format.html { render action: "new" }
        format.json { render json: @silent_install.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /silent_installs/1
  # PUT /silent_installs/1.json
  def update
    @silent_install = SilentInstall.find(params[:id])

    respond_to do |format|
      if @silent_install.update_attributes(params[:silent_install])
        format.html { redirect_to @silent_install, notice: 'Silent install was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @silent_install.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silent_installs/1
  # DELETE /silent_installs/1.json
  def destroy
    @silent_install = SilentInstall.find(params[:id])
    @silent_install.destroy

    respond_to do |format|
      format.html { redirect_to silent_installs_url }
      format.json { head :no_content }
    end
  end
end
