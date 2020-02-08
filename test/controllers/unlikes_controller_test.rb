require 'test_helper'

class UnlikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unlikes_index_url
    assert_response :success
  end

end
