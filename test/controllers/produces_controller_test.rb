require 'test_helper'

class ProducesControllerTest < ActionController::TestCase
  setup do
    @produce = produces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produce" do
    assert_difference('Produce.count') do
      post :create, produce: { description: @produce.description, img_url: @produce.img_url, price: @produce.price, title: @produce.title }
    end

    assert_redirected_to produce_path(assigns(:produce))
  end

  test "should show produce" do
    get :show, id: @produce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produce
    assert_response :success
  end

  test "should update produce" do
    patch :update, id: @produce, produce: { description: @produce.description, img_url: @produce.img_url, price: @produce.price, title: @produce.title }
    assert_redirected_to produce_path(assigns(:produce))
  end

  test "should destroy produce" do
    assert_difference('Produce.count', -1) do
      delete :destroy, id: @produce
    end

    assert_redirected_to produces_path
  end
end
