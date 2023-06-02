require "test_helper"

class BookCommntsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get book_commnts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get book_commnts_destroy_url
    assert_response :success
  end
end
