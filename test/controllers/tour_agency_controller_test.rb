require 'test_helper'

class TourAgencyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tour_agency_index_url
    assert_response :success
  end

end
