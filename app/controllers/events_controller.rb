class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @customers = Customer.all
  end

  # GET /events/1/edit
  def edit

    @event_menu = Menu.where(:event_id => @event.id).first

    if @event_menu.blank?
      @menus = Menu.standard
    end
    
  end

  def load_menu

    if (params[:menu][:action]).downcase == "view"
      # view
      if !(params[:menu][:id]).blank?
        @menu = Menu.find(params[:menu][:id])
        @courses = Course.all
      end
    else
      # copy with Amoeba

       @menu = Menu.find(params[:menu][:id])
       @courses = Course.all

    end

    respond_to do |format|
      format.js
      format.json { head :no_content }
    end
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to edit_event_path(@event), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        @updated = true
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_title, :event_date, :customer_id, :venue, :event_details, :covers, :vegetarian, :coeliac, :sugar_free, :allergies)
    end
end
