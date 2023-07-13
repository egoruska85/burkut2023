require "test_helper"

class FactorycontactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get factorycontacts_index_url
    assert_response :success
  end
end
