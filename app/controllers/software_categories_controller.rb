class SoftwareCategoriesController < ApplicationController

require "#{Rails.root}/lib/mosh_modules/management_module"
include MoshModules::ManagementModule
before_filter :management_filter

  # GET /software_categories
  # GET /software_categories.json
  def index
    @software_categories = SoftwareCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @software_categories }
    end
  end

  # GET /software_categories/1
  # GET /software_categories/1.json
  def show
    @software_category = SoftwareCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @software_category }
    end
  end

  # GET /software_categories/new
  # GET /software_categories/new.json
  def new
    @software_category = SoftwareCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @software_category }
    end
  end

  # GET /software_categories/1/edit
  def edit
    @software_category = SoftwareCategory.find(params[:id])
  end

  # POST /software_categories
  # POST /software_categories.json
  def create
    @software_category = SoftwareCategory.new(params[:software_category])

    respond_to do |format|
      if @software_category.save
        format.html { redirect_to @software_category, notice: 'Software category was successfully created.' }
        format.json { render json: @software_category, status: :created, location: @software_category }
      else
        format.html { render action: "new" }
        format.json { render json: @software_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /software_categories/1
  # PUT /software_categories/1.json
  def update
    @software_category = SoftwareCategory.find(params[:id])

    respond_to do |format|
      if @software_category.update_attributes(params[:software_category])
        format.html { redirect_to @software_category, notice: 'Software category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @software_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /software_categories/1
  # DELETE /software_categories/1.json
  def destroy
    @software_category = SoftwareCategory.find(params[:id])
    @software_category.destroy

    respond_to do |format|
      format.html { redirect_to software_categories_url }
      format.json { head :no_content }
    end
  end
end
