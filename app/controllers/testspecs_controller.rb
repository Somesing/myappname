class TestspecsController < ApplicationController
  # GET /testspecs
  # GET /testspecs.json
  def index
    @testspecs = Testspec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testspecs }
    end
  end

  # GET /testspecs/1
  # GET /testspecs/1.json
  def show
    @testspec = Testspec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testspec }
    end
  end

  # GET /testspecs/new
  # GET /testspecs/new.json
  def new
    @testspec = Testspec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testspec }
    end
  end

  # GET /testspecs/1/edit
  def edit
    @testspec = Testspec.find(params[:id])
  end

  # POST /testspecs
  # POST /testspecs.json
  def create
    @testspec = Testspec.new(params[:testspec])

    respond_to do |format|
      if @testspec.save
        format.html { redirect_to @testspec, notice: 'Testspec was successfully created.' }
        format.json { render json: @testspec, status: :created, location: @testspec }
      else
        format.html { render action: "new" }
        format.json { render json: @testspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testspecs/1
  # PUT /testspecs/1.json
  def update
    @testspec = Testspec.find(params[:id])

    respond_to do |format|
      if @testspec.update_attributes(params[:testspec])
        format.html { redirect_to @testspec, notice: 'Testspec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testspecs/1
  # DELETE /testspecs/1.json
  def destroy
    @testspec = Testspec.find(params[:id])
    @testspec.destroy

    respond_to do |format|
      format.html { redirect_to testspecs_url }
      format.json { head :no_content }
    end
  end
end
