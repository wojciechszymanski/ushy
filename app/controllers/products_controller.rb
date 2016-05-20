class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    # @products = Product.all
    respond_to do |format|
      format.html
      format.json { render json: ProductsDatatable.new(view_context) }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create

    # Check for new category
    if params[:product][:product_category_id] == 'other' and params[:new_product_category_name]

      product_category = ProductCategory.find_or_create_by(name: params[:new_product_category_name].to_s.titleize)
      # overwrite selection
      params[:product][:product_category_id] = product_category.id

    end

    # byebug

    # Check for new unit

    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update

    # Check for new category
    if params[:product][:product_category_id] == 'other' and params[:new_product_category_name]

      product_category = ProductCategory.find_or_create_by(name: params[:new_product_category_name].to_s.titleize)
      # overwrite selection
      params[:product][:product_category_id] = product_category.id

    end

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_url, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def copy
    @source = Product.find(params[:product_id])
    @product = @source.dup
    render 'new'
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_category_id, :name, :unit_id, :qty_in_stock, :qty_allocated, :low_stock_qty, :re_order_qty, :indicative_selling, :new_product_category_name, :manage_stock)
    end
end
