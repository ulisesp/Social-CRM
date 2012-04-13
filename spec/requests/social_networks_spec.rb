require 'spec_helper'

describe "SocialNetworks" do
  describe "GET /social_networks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get social_networks_path
      response.status.should be(200)
    end
  end
end
