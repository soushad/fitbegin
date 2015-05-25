require 'test_helper'

class FitnewsControllerTest < ActionController::TestCase
  setup do
    @fitnews = fitnews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitnews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitnews" do
    assert_difference('Fitnews.count') do
      post :create, fitnews: { content: @fitnews.content, is_public: @fitnews.is_public, title: @fitnews.title }
    end

    assert_redirected_to fitnews_path(assigns(:fitnews))
  end

  test "should show fitnews" do
    get :show, id: @fitnews
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitnews
    assert_response :success
  end

  test "should update fitnews" do
    patch :update, id: @fitnews, fitnews: { content: @fitnews.content, is_public: @fitnews.is_public, title: @fitnews.title }
    assert_redirected_to fitnews_path(assigns(:fitnews))
  end

  test "should destroy fitnews" do
    assert_difference('Fitnews.count', -1) do
      delete :destroy, id: @fitnews
    end

    assert_redirected_to fitnews_index_path
  end
end
