require 'test_helper'

class AttractionsdbsControllerTest < ActionController::TestCase
  setup do
    @attractionsdb = attractionsdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attractionsdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attractionsdb" do
    assert_difference('Attractionsdb.count') do
      post :create, attractionsdb: { description: @attractionsdb.description, entry: @attractionsdb.entry, name: @attractionsdb.name, rating: @attractionsdb.rating, web: @attractionsdb.web }
    end

    assert_redirected_to attractionsdb_path(assigns(:attractionsdb))
  end

  test "should show attractionsdb" do
    get :show, id: @attractionsdb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attractionsdb
    assert_response :success
  end

  test "should update attractionsdb" do
    patch :update, id: @attractionsdb, attractionsdb: { description: @attractionsdb.description, entry: @attractionsdb.entry, name: @attractionsdb.name, rating: @attractionsdb.rating, web: @attractionsdb.web }
    assert_redirected_to attractionsdb_path(assigns(:attractionsdb))
  end

  test "should destroy attractionsdb" do
    assert_difference('Attractionsdb.count', -1) do
      delete :destroy, id: @attractionsdb
    end

    assert_redirected_to attractionsdbs_path
  end
end
