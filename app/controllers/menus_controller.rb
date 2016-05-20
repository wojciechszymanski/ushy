class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    @courses = Course.all
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to menus_url, notice: 'Menu was successfully created. You can now add dishes.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def adddish

    @menu = Menu.find(params[:menu][:menu_id])
    @dish = Dish.find(params[:menu][:dish_id])

    if !MenuDish.where("menu_id = ? and dish_id = ? and course_id = ?", params[:menu][:menu_id], params[:menu][:dish_id], @dish.course_id).present?
      MenuDish.create(menu_id: params[:menu][:menu_id], dish_id: params[:menu][:dish_id], course_id: @dish.course_id)
      @created = true
    end
    
    respond_to do |format|
      format.js
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to menus_url, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def deletedish

    @dish = Dish.find(params[:dish_id])
    MenuDish.where("menu_id = ? and dish_id = ?", params[:id], params[:dish_id]).destroy_all

    respond_to do |format|
      format.js
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:name, :notes)
    end

    def menu_dish_params
      params.require(:menu).permit(:menu_id, :dish_id, :course_id)
    end

end
