require 'test_helper'

class MicrppostsControllerTest < ActionController::TestCase
  setup do
    @micrppost = micrpposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micrpposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micrppost" do
    assert_difference('Micrppost.count') do
      post :create, micrppost: { content: @micrppost.content, user_id: @micrppost.user_id }
    end

    assert_redirected_to micrppost_path(assigns(:micrppost))
  end

  test "should show micrppost" do
    get :show, id: @micrppost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micrppost
    assert_response :success
  end

  test "should update micrppost" do
    put :update, id: @micrppost, micrppost: { content: @micrppost.content, user_id: @micrppost.user_id }
    assert_redirected_to micrppost_path(assigns(:micrppost))
  end

  test "should destroy micrppost" do
    assert_difference('Micrppost.count', -1) do
      delete :destroy, id: @micrppost
    end

    assert_redirected_to micrpposts_path
  end
end
