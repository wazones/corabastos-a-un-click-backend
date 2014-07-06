class MerchantsController < ApplicationController
  # GET /merchants
  # GET /merchants.json
  def index
    @merchants = Merchant.all
    render json: @merchants.to_json(:except => [ :profilePicture ])
  end

  # GET /merchants/1
  # GET /merchants/1.json
  def show
    @merchant = Merchant.find(params[:id])
    #@merchant.stores = Store.all
    render json: @merchant.to_json(:except => [ :profilePicture ], :include =>:stores)
  end

  # POST /merchants
  # POST /merchants.json
  def create
    @merchant = Merchant.new(merchant_params)
    #@merchant.profilePicture = params[:profilePicture].read
    if(params.has_key?(:profilePicture))
      @merchant.profilePicture = params[:profilePicture].read
    end 
    

    if @merchant.save
      render json: @merchant, status: :created, location: @merchant
    else
      render json: @merchant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merchants/1
  # PATCH/PUT /merchants/1.json
  def update
    @merchant = Merchant.find(params[:id])
    if(params.has_key?(:profilePicture))
      @merchant.profilePicture = params[:profilePicture].read
    end 

    if @merchant.update(merchant_params)
      head :no_content
    else
      render json: @merchant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merchants/1
  # DELETE /merchants/1.json
  def destroy
    @merchant = Merchant.find(params[:id])
    @merchant.destroy

    head :no_content
  end

  protected
  def merchant_params
    params.permit(:user, :pass, :phone, :name, :rating)
  end
end
