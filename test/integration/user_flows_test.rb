require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  fixtures :all

  test "login and browse site" do
  	https!
  	get "/user"
  	assert_response :success
  end

end
