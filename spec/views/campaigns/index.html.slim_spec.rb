require 'spec_helper'

describe "campaigns/index.html.slim" do
  before(:each) do
    assign(:campaigns, [
      stub_model(Campaign,
        :id_client => 1,
        :id_soc_net => 1,
        :fan_id => 1
      ),
      stub_model(Campaign,
        :id_client => 1,
        :id_soc_net => 1,
        :fan_id => 1
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
