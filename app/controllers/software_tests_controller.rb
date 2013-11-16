class SoftwareTestsController < ApplicationController

require "#{Rails.root}/lib/mosh_modules/noncsit_filter"
include MoshModules::NoncsitModule
before_filter :noncsit_filter

  # GET /software_tests
  # GET /software_tests.json
  def index
    @software_tests = SoftwareTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @software_tests }
    end
  end

  # GET /software_tests/1
  # GET /software_tests/1.json
  def show
    @software_test = SoftwareTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @software_test }
    end
  end

  # GET /software_tests/new
  # GET /software_tests/new.json
  def new
    @software_test = SoftwareTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @software_test }
    end
  end

  # GET /software_tests/1/edit
  def edit
    @software_test = SoftwareTest.find(params[:id])
  end

  # POST /software_tests
  # POST /software_tests.json
  def create
    @software_test = SoftwareTest.new(params[:software_test])

    respond_to do |format|
      if @software_test.save
        format.html { redirect_to @software_test, notice: 'Software test was successfully created.' }
        format.json { render json: @software_test, status: :created, location: @software_test }
      else
        format.html { render action: "new" }
        format.json { render json: @software_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /software_tests/1
  # PUT /software_tests/1.json
  def update
    @software_test = SoftwareTest.find(params[:id])

    respond_to do |format|
      if @software_test.update_attributes(params[:software_test])
        format.html { redirect_to @software_test, notice: 'Software test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @software_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /software_tests/1
  # DELETE /software_tests/1.json
  def destroy
    @software_test = SoftwareTest.find(params[:id])
    @software_test.destroy

    respond_to do |format|
      format.html { redirect_to software_tests_url }
      format.json { head :no_content }
    end
  end
end
