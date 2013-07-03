require 'test_helper'

class PedalsControllerTest < ActionController::TestCase
  setup do
    @pedal = pedals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedal" do
    assert_difference('Pedal.count') do
      post :create, pedal: { price: @pedal.price, rating: @pedal.rating, title: @pedal.title }
    end

    assert_redirected_to pedal_path(assigns(:pedal))
  end

  test "should show pedal" do
    get :show, id: @pedal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedal
    assert_response :success
  end

  test "should update pedal" do
    put :update, id: @pedal, pedal: { price: @pedal.price, rating: @pedal.rating, title: @pedal.title }
    assert_redirected_to pedal_path(assigns(:pedal))
  end

  test "should destroy pedal" do
    assert_difference('Pedal.count', -1) do
      delete :destroy, id: @pedal
    end

    assert_redirected_to pedals_path
  end
end
