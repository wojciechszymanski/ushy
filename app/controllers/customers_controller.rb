class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
      # detect type of the request
      if request.xhr?
        # respond to Ajax request
        @remote = true
      else
        # respond to normal request
        @remote = false
      end

  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save

        @created = true

        format.html { redirect_to customers_url, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
        format.js
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        @updated = true
        format.html { redirect_to customers_url, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address1, :address2, :city, :county, :postcode, :notes, :phone, :mobile, :email)
    end
end
