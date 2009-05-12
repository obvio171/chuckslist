require File.dirname(__FILE__) + '/../test_helper'

class AdminControllerTest < ActionController::TestCase

  def setup
    @controller = AdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    login_as :admin
  end

  def test_delete_cat_shouldnt_call_redirect_twice
    assert_nothing_raised  do
      post :delete_cat, :id => 4
    end
  end
end
