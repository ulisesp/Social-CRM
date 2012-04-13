require 'spec_helper'

describe "social_networks/edit.html.slim" do
  before(:each) do
    @social_network = assign(:social_network, stub_model(SocialNetwork,
      :name => "MyString",
      :client_id => 1
    ))
  end

  it "renders the edit social_network form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => social_networks_path(@social_network), :method => "post" do
      assert_select "input#social_network_name", :name => "social_network[name]"
      assert_select "input#social_network_client_id", :name => "social_network[client_id]"
    end
  end
end
