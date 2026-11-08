require "test_helper"

class CountriesControllerTest < ActionDispatch::IntegrationTest
  test "国別の旅行準備ページ（日本語）" do
    get country_path(countries(:thailand))
    assert_response :success
    assert_select "h1", "タイ"
    assert_select ".country-card", 6
  end

  test "国別の旅行準備ページ（英語）" do
    get country_path(countries(:thailand), locale: "en")
    assert_response :success
    assert_select "h1", "Thailand"
  end
end
