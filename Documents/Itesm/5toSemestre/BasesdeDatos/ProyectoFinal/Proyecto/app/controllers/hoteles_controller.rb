class HotelesController < ApplicationController
  # GET /hoteles
  # GET /hoteles.json
  def index
    @hoteles = Hotele.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hoteles }
    end
  end

  # GET /hoteles/1
  # GET /hoteles/1.json
  def show
    @hotele = Hotele.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotele }
    end
  end

  # GET /hoteles/new
  # GET /hoteles/new.json
  def new
    @hotele = Hotele.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotele }
    end
  end

  # GET /hoteles/1/edit
  def edit
    @hotele = Hotele.find(params[:id])
  end

  # POST /hoteles
  # POST /hoteles.json
  def create
    @hotele = Hotele.new(params[:hotele])

    respond_to do |format|
      if @hotele.save
        format.html { redirect_to @hotele, notice: 'Hotele was successfully created.' }
        format.json { render json: @hotele, status: :created, location: @hotele }
      else
        format.html { render action: "new" }
        format.json { render json: @hotele.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hoteles/1
  # PUT /hoteles/1.json
  def update
    @hotele = Hotele.find(params[:id])

    respond_to do |format|
      if @hotele.update_attributes(params[:hotele])
        format.html { redirect_to @hotele, notice: 'Hotele was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotele.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoteles/1
  # DELETE /hoteles/1.json
  def destroy
    @hotele = Hotele.find(params[:id])
    @hotele.destroy

    respond_to do |format|
      format.html { redirect_to hoteles_url }
      format.json { head :no_content }
    end
  end
end
