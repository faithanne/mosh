class InstallsController < ApplicationController

require "#{Rails.root}/lib/mosh_modules/noncsit_module"
include MoshModules::NoncsitModule
before_filter :noncsit_filter

  # GET /installs
  # GET /installs.json
  def index
    @installs = Install.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @installs }
    end
  end

  # GET /installs/1
  # GET /installs/1.json
  def show
    @install = Install.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @install }
    end
  end

  # GET /installs/new
  # GET /installs/new.json
  def new
    @install = Install.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @install }
    end
  end

  # GET /installs/1/edit
  def edit
    @install = Install.find(params[:id])
  end

  # POST /installs
  # POST /installs.json
  def create
    @install = Install.new(params[:install])

    respond_to do |format|
      if @install.save
        format.html { redirect_to @install, notice: 'Install was successfully created.' }
        format.json { render json: @install, status: :created, location: @install }
      else
        format.html { render action: "new" }
        format.json { render json: @install.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /installs/1
  # PUT /installs/1.json
  def update
    @install = Install.find(params[:id])

    respond_to do |format|
      if @install.update_attributes(params[:install])
        format.html { redirect_to @install, notice: 'Install was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @install.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installs/1
  # DELETE /installs/1.json
  def destroy
    @install = Install.find(params[:id])
    @install.destroy

    respond_to do |format|
      format.html { redirect_to installs_url }
      format.json { head :no_content }
    end
  end
end
