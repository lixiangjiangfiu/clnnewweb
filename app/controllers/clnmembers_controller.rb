class ClnmembersController < ApplicationController
  # GET /clnmembers
  # GET /clnmembers.json
  def index
    @clnmembers = Clnmember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clnmembers }
    end
  end

  # GET /clnmembers/1
  # GET /clnmembers/1.json
  def show
    @clnmember = Clnmember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clnmember }
    end
  end

  # GET /clnmembers/new
  # GET /clnmembers/new.json
  def new
    @clnmember = Clnmember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clnmember }
    end
  end

  # GET /clnmembers/1/edit
  def edit
    @clnmember = Clnmember.find(params[:id])
  end

  # POST /clnmembers
  # POST /clnmembers.json
  def create
    @clnmember = Clnmember.new(params[:clnmember])

    respond_to do |format|
      if @clnmember.save
        format.html { redirect_to @clnmember, notice: 'Clnmember was successfully created.' }
        format.json { render json: @clnmember, status: :created, location: @clnmember }
      else
        format.html { render action: "new" }
        format.json { render json: @clnmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clnmembers/1
  # PUT /clnmembers/1.json
  def update
    @clnmember = Clnmember.find(params[:id])

    respond_to do |format|
      if @clnmember.update_attributes(params[:clnmember])
        format.html { redirect_to @clnmember, notice: 'Clnmember was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clnmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clnmembers/1
  # DELETE /clnmembers/1.json
  def destroy
    @clnmember = Clnmember.find(params[:id])
    @clnmember.destroy

    respond_to do |format|
      format.html { redirect_to clnmembers_url }
      format.json { head :no_content }
    end
  end
end
