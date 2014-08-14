require 'test_helper'

class PlayerActionsControllerTest < ActionController::TestCase
  setup do
    @player_action = player_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_action" do
    assert_difference('PlayerAction.count') do
      post :create, player_action: { name: @player_action.name, position: @player_action.position }
    end

    assert_redirected_to player_action_path(assigns(:player_action))
  end

  test "should show player_action" do
    get :show, id: @player_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_action
    assert_response :success
  end

  test "should update player_action" do
    patch :update, id: @player_action, player_action: { name: @player_action.name, position: @player_action.position }
    assert_redirected_to player_action_path(assigns(:player_action))
  end

  test "should destroy player_action" do
    assert_difference('PlayerAction.count', -1) do
      delete :destroy, id: @player_action
    end

    assert_redirected_to player_actions_path
  end
end
