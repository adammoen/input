require 'test_helper'

class JoiningsControllerTest < ActionController::TestCase
  setup do
    @joining = joinings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joinings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joining" do
    assert_difference('Joining.count') do
      post :create, joining: { created_at: @joining.created_at, group_id: @joining.group_id, joined_at: @joining.joined_at, reason: @joining.reason, updated_at: @joining.updated_at, user_id: @joining.user_id }
    end

    assert_redirected_to joining_path(assigns(:joining))
  end

  test "should show joining" do
    get :show, id: @joining
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joining
    assert_response :success
  end

  test "should update joining" do
    patch :update, id: @joining, joining: { created_at: @joining.created_at, group_id: @joining.group_id, joined_at: @joining.joined_at, reason: @joining.reason, updated_at: @joining.updated_at, user_id: @joining.user_id }
    assert_redirected_to joining_path(assigns(:joining))
  end

  test "should destroy joining" do
    assert_difference('Joining.count', -1) do
      delete :destroy, id: @joining
    end

    assert_redirected_to joinings_path
  end
end
