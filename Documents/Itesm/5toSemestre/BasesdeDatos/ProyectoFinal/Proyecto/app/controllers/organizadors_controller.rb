class OrganizadorsController < ApplicationController
  # GET /organizadors
  # GET /organizadors.json
  def index
    @organizadors = Organizador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organizadors }
    end
  end

  # GET /organizadors/1
  # GET /organizadors/1.json
  def show
    @organizador = Organizador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organizador }
    end
  end

  # GET /organizadors/new
  # GET /organizadors/new.json
  def new
    @organizador = Organizador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organizador }
    end
  end

  # GET /organizadors/1/edit
  def edit
    @organizador = Organizador.find(params[:id])
  end

  # POST /organizadors
  # POST /organizadors.json
  def create
    @organizador = Organizador.new(params[:organizador])

    respond_to do |format|
      if @organizador.save
        format.html { redirect_to @organizador, notice: 'Organizador was successfully created.' }
        format.json { render json: @organizador, status: :created, location: @organizador }
      else
        format.html { render action: "new" }
        format.json { render json: @organizador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organizadors/1
  # PUT /organizadors/1.json
  def update
    @organizador = Organizador.find(params[:id])

    respond_to do |format|
      if @organizador.update_attributes(params[:organizador])
        format.html { redirect_to @organizador, notice: 'Organizador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organizador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizadors/1
  # DELETE /organizadors/1.json
  def destroy
    @organizador = Organizador.find(params[:id])
    @organizador.destroy

    respond_to do |format|
      format.html { redirect_to organizadors_url }
      format.json { head :no_content }
    end
  end
end
