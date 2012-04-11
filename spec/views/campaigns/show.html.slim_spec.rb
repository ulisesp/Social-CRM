require 'spec_helper'

describe "campaigns/show.html.slim" do
  before(:each) do
    @campaign = assign(:campaign, stub_model(Campaign,
      :id_client => 1,
      :id_soc_net => 1,
      :fan_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
