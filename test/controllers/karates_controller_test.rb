require "test_helper"

class KaratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @karate = karates(:one)
  end

  test "should get index" do
    get karates_url, as: :json
    assert_response :success
  end

  test "should create karate" do
    assert_difference("Karate.count") do
      post karates_url, params: { karate: { activity: @karate.activity, country: @karate.country, name: @karate.name, second_name: @karate.second_name } }, as: :json
    end

    assert_response :created
  end

  test "should show karate" do
    get karate_url(@karate), as: :json
    assert_response :success
  end

  test "should update karate" do
    patch karate_url(@karate), params: { karate: { activity: @karate.activity, country: @karate.country, name: @karate.name, second_name: @karate.second_name } }, as: :json
    assert_response :success
  end

  test "should destroy karate" do
    assert_difference("Karate.count", -1) do
      delete karate_url(@karate), as: :json
    end

    assert_response :no_content
  end
end
