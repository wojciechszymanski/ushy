require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { allergies: @event.allergies, coeliac: @event.coeliac, covers: @event.covers, customer_id: @event.customer_id, event_date: @event.event_date, event_details: @event.event_details, event_title: @event.event_title, sugar_free: @event.sugar_free, vegetarian: @event.vegetarian, venue: @event.venue }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { allergies: @event.allergies, coeliac: @event.coeliac, covers: @event.covers, customer_id: @event.customer_id, event_date: @event.event_date, event_details: @event.event_details, event_title: @event.event_title, sugar_free: @event.sugar_free, vegetarian: @event.vegetarian, venue: @event.venue }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
