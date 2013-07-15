require 'test_helper'

class PesticidesControllerTest < ActionController::TestCase
  setup do
    @pesticide = pesticides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesticides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesticide" do
    assert_difference('Pesticide.count') do
      post :create, pesticide: { active_ingredient: @pesticide.active_ingredient, common_name: @pesticide.common_name, epa_registration: @pesticide.epa_registration, formulation: @pesticide.formulation, restricted_use: @pesticide.restricted_use, scientific_name: @pesticide.scientific_name, signal: @pesticide.signal }
    end

    assert_redirected_to pesticide_path(assigns(:pesticide))
  end

  test "should show pesticide" do
    get :show, id: @pesticide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesticide
    assert_response :success
  end

  test "should update pesticide" do
    put :update, id: @pesticide, pesticide: { active_ingredient: @pesticide.active_ingredient, common_name: @pesticide.common_name, epa_registration: @pesticide.epa_registration, formulation: @pesticide.formulation, restricted_use: @pesticide.restricted_use, scientific_name: @pesticide.scientific_name, signal: @pesticide.signal }
    assert_redirected_to pesticide_path(assigns(:pesticide))
  end

  test "should destroy pesticide" do
    assert_difference('Pesticide.count', -1) do
      delete :destroy, id: @pesticide
    end

    assert_redirected_to pesticides_path
  end
end
