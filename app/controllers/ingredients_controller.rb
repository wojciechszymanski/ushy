class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /ingredients
  # GET /ingredients.json
  def index

    #1st you retrieve the dish thanks to params[:dish_id]
    @dish = Dish.find(params[:dish_id])
    #2nd you get all ingredients for this dish
    @ingredients = @dish.ingredients

  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    #1st you retrieve the dish thanks to params[:dish_id]
    @dish = Dish.find(params[:dish_id])
    #2nd you get all ingredients for this dish
    @ingredients = @dish.ingredients
  end

  # GET /ingredients/new
  def new
    #1st you retrieve the dish thanks to params[:dish_id]
    @dish = Dish.find(params[:dish_id])
    #2nd you get all ingredients for this dish
    @ingredient = @dish.ingredients.build

    #@ingredient = Ingredient.new
  end

  # GET /ingredients/1/edit
  def edit
        #1st you retrieve the dish thanks to params[:dish_id]
    @dish = Dish.find(params[:dish_id])
    #2nd you get all ingredients for this dish
    @ingredient = @dish.ingredients.find(params[:id])
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    #1st you retrieve the dish thanks to params[:dish_id]
    @dish = Dish.find(params[:dish_id])

    @ingredient = @dish.ingredients.create(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @ingredient.errors.full_messages, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
     #1st you retrieve the dish thanks to params[:dish_id]
    @dish = Dish.find(params[:dish_id])
    #2nd you get all ingredients for this dish
    @ingredient = @dish.ingredients.find(params[:id])
    
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @ingredient.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to ingredients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:product_id, :dish_id, :qty, :special_instructions)
    end
end
