class EmpleadosController < ApplicationController
  # GET /empleados
  # GET /empleados.json
  def index
    @empleados = Empleado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @empleados }
    end
  end

  # GET /empleados/1
  # GET /empleados/1.json
  def show
    @empleado = Empleado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @empleado }
    end
  end

  # GET /empleados/new
  # GET /empleados/new.json
  def new
    @empleado = Empleado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @empleado }
    end
  end

  # GET /empleados/1/edit
  def edit
    @empleado = Empleado.find(params[:id])
  end

  # POST /empleados
  # POST /empleados.json
  def create
    @empleado = Empleado.new(params[:empleado])

    respond_to do |format|
      if @empleado.save
        format.html { redirect_to @empleado, notice: 'Empleado was successfully created.' }
        format.json { render json: @empleado, status: :created, location: @empleado }
      else
        format.html { render action: "new" }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /empleados/1
  # PUT /empleados/1.json
  def update
    @empleado = Empleado.find(params[:id])

    respond_to do |format|
      if @empleado.update_attributes(params[:empleado])
        format.html { redirect_to @empleado, notice: 'Empleado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleados/1
  # DELETE /empleados/1.json
  def destroy
    @empleado = Empleado.find(params[:id])
    @empleado.destroy

    respond_to do |format|
      format.html { redirect_to empleados_url }
      format.json { head :no_content }
    end
  end
end
