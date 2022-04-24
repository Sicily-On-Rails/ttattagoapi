require "test_helper"

class SocialNetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_network = social_networks(:one)
  end

  test "should get index" do
    get social_networks_url, as: :json
    assert_response :success
  end

  test "should create social_network" do
    assert_difference("SocialNetwork.count") do
      post social_networks_url, params: { social_network: { link: @social_network.link, name: @social_network.name, social_id: @social_network.social_id, social_type: @social_network.social_type } }, as: :json
    end

    assert_response :created
  end

  test "should show social_network" do
    get social_network_url(@social_network), as: :json
    assert_response :success
  end

  test "should update social_network" do
    patch social_network_url(@social_network), params: { social_network: { link: @social_network.link, name: @social_network.name, social_id: @social_network.social_id, social_type: @social_network.social_type } }, as: :json
    assert_response :success
  end

  test "should destroy social_network" do
    assert_difference("SocialNetwork.count", -1) do
      delete social_network_url(@social_network), as: :json
    end

    assert_response :no_content
  end
end
