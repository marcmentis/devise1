require 'test_helper'

class AuthorizelogsControllerTest < ActionController::TestCase
  setup do
    @authorizelog = authorizelogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authorizelogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authorizelog" do
    assert_difference('Authorizelog.count') do
      post :create, authorizelog: { body: @authorizelog.body, title: @authorizelog.title }
    end

    assert_redirected_to authorizelog_path(assigns(:authorizelog))
  end

  test "should show authorizelog" do
    get :show, id: @authorizelog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @authorizelog
    assert_response :success
  end

  test "should update authorizelog" do
    patch :update, id: @authorizelog, authorizelog: { body: @authorizelog.body, title: @authorizelog.title }
    assert_redirected_to authorizelog_path(assigns(:authorizelog))
  end

  test "should destroy authorizelog" do
    assert_difference('Authorizelog.count', -1) do
      delete :destroy, id: @authorizelog
    end

    assert_redirected_to authorizelogs_path
  end
end
