require 'spec_helper'

describe "social_networks/show.html.slim" do
  before(:each) do
    @social_network = assign(:social_network, stub_model(SocialNetwork,
      :name => "Name",
      :client_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
