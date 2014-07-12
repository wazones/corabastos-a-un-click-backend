class WarehousesController < ApplicationController
  # GET /warehouses
  # GET /warehouses.json
  def index
    @warehouses = Warehouse.all

    render json: @warehouses
  end

  # GET /warehouses/1
  # GET /warehouses/1.json
  def show
    @warehouse = Warehouse.find(params[:id])

    #render json: @warehouse
    render json: @warehouse.to_json(:include =>:stores)

  end

  # POST /warehouses
  # POST /warehouses.json
  def create
    @warehouse = Warehouse.new(warehouse_params)

    if @warehouse.save
      render json: @warehouse, status: :created, location: @warehouse
    else
      render json: @warehouse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /warehouses/1
  # PATCH/PUT /warehouses/1.json
  def update
    @warehouse = Warehouse.find(params[:id])

    if @warehouse.update(warehouse_params)
      head :no_content
    else
      render json: @warehouse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /warehouses/1
  # DELETE /warehouses/1.json
  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy

    head :no_content
  end

  protected
  def warehouse_params
    params.permit(:name, :type_warehouse, :x, :y)
  end
end
