require 'spec_helper'

describe "facebook_data/index.html.slim" do
  before(:each) do
    assign(:facebook_data, [
      stub_model(FacebookDatum,
        :client_id => 1,
        :actions => "MyText",
        :new_fans => 1,
        :total_fans => 1,
        :goal_fans => 1,
        :fans_growth_porcent => 1.5,
        :prints => 1,
        :porcentual_diferent => 1.5,
        :total_interactions => 1,
        :total_reach => 1,
        :potential_reach => 1,
        :total_prints_per_anno => 1.5,
        :total_prints => 1,
        :total_clicks_anno => 1,
        :fans_through_anno => 1,
        :agency_investment => 1.5,
        :new_stock_investment => 1.5,
        :anno_investment => 1.5,
        :total_investment => 1.5,
        :cpm_prints => 1.5,
        :ctr_anno => 1.5,
        :cpm_anno => 1.5,
        :cpc_anno => 1.5,
        :fan_cost => 1.5
      ),
      stub_model(FacebookDatum,
        :client_id => 1,
        :actions => "MyText",
        :new_fans => 1,
        :total_fans => 1,
        :goal_fans => 1,
        :fans_growth_porcent => 1.5,
        :prints => 1,
        :porcentual_diferent => 1.5,
        :total_interactions => 1,
        :total_reach => 1,
        :potential_reach => 1,
        :total_prints_per_anno => 1.5,
        :total_prints => 1,
        :total_clicks_anno => 1,
        :fans_through_anno => 1,
        :agency_investment => 1.5,
        :new_stock_investment => 1.5,
        :anno_investment => 1.5,
        :total_investment => 1.5,
        :cpm_prints => 1.5,
        :ctr_anno => 1.5,
        :cpm_anno => 1.5,
        :cpc_anno => 1.5,
        :fan_cost => 1.5
      )
    ])
  end

  it "renders a list of facebook_data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
