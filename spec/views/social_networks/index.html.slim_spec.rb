require 'spec_helper'

describe "social_networks/index.html.slim" do
  before(:each) do
    assign(:social_networks, [
      stub_model(SocialNetwork,
        :name => "Name",
        :client_id => 1
      ),
      stub_model(SocialNetwork,
        :name => "Name",
        :client_id => 1
      )
    ])
  end

  it "renders a list of social_networks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
