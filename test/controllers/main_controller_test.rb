require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get crossover" do
    get :crossover
    assert_response :success
  end

  test "should get enclosure" do
    get :enclosure
    assert_response :success
  end

end
