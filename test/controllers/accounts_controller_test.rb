require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
    assert_template :index
    assert_template layout: "layouts/application"
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: accounts(:user1).serializable_hash()
    end
    assert_not_nil assigns(:account)
    assert_redirected_to account_path(assigns(:account))
  end
end
