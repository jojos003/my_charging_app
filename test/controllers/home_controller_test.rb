require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_url
    assert_response :success

    assert_match I18n.t('home.title'), @response.body
    assert_match I18n.t('home.titles'), @response.body
  end
end
