require 'spec_helper'

describe "campaigns/edit.html.slim" do
  before(:each) do
    @campaign = assign(:campaign, stub_model(Campaign,
      :id_client => 1,
      :id_soc_net => 1,
      :fan_id => 1
    ))
  end

  it "renders the edit campaign form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campaigns_path(@campaign), :method => "post" do
      assert_select "input#campaign_id_client", :name => "campaign[id_client]"
      assert_select "input#campaign_id_soc_net", :name => "campaign[id_soc_net]"
      assert_select "input#campaign_fan_id", :name => "campaign[fan_id]"
    end
  end
end
