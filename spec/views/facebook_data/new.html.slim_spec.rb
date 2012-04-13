require 'spec_helper'

describe "facebook_data/new.html.slim" do
  before(:each) do
    assign(:facebook_datum, stub_model(FacebookDatum,
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
    ).as_new_record)
  end

  it "renders new facebook_datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => facebook_data_path, :method => "post" do
      assert_select "input#facebook_datum_client_id", :name => "facebook_datum[client_id]"
      assert_select "textarea#facebook_datum_actions", :name => "facebook_datum[actions]"
      assert_select "input#facebook_datum_new_fans", :name => "facebook_datum[new_fans]"
      assert_select "input#facebook_datum_total_fans", :name => "facebook_datum[total_fans]"
      assert_select "input#facebook_datum_goal_fans", :name => "facebook_datum[goal_fans]"
      assert_select "input#facebook_datum_fans_growth_porcent", :name => "facebook_datum[fans_growth_porcent]"
      assert_select "input#facebook_datum_prints", :name => "facebook_datum[prints]"
      assert_select "input#facebook_datum_porcentual_diferent", :name => "facebook_datum[porcentual_diferent]"
      assert_select "input#facebook_datum_total_interactions", :name => "facebook_datum[total_interactions]"
      assert_select "input#facebook_datum_total_reach", :name => "facebook_datum[total_reach]"
      assert_select "input#facebook_datum_potential_reach", :name => "facebook_datum[potential_reach]"
      assert_select "input#facebook_datum_total_prints_per_anno", :name => "facebook_datum[total_prints_per_anno]"
      assert_select "input#facebook_datum_total_prints", :name => "facebook_datum[total_prints]"
      assert_select "input#facebook_datum_total_clicks_anno", :name => "facebook_datum[total_clicks_anno]"
      assert_select "input#facebook_datum_fans_through_anno", :name => "facebook_datum[fans_through_anno]"
      assert_select "input#facebook_datum_agency_investment", :name => "facebook_datum[agency_investment]"
      assert_select "input#facebook_datum_new_stock_investment", :name => "facebook_datum[new_stock_investment]"
      assert_select "input#facebook_datum_anno_investment", :name => "facebook_datum[anno_investment]"
      assert_select "input#facebook_datum_total_investment", :name => "facebook_datum[total_investment]"
      assert_select "input#facebook_datum_cpm_prints", :name => "facebook_datum[cpm_prints]"
      assert_select "input#facebook_datum_ctr_anno", :name => "facebook_datum[ctr_anno]"
      assert_select "input#facebook_datum_cpm_anno", :name => "facebook_datum[cpm_anno]"
      assert_select "input#facebook_datum_cpc_anno", :name => "facebook_datum[cpc_anno]"
      assert_select "input#facebook_datum_fan_cost", :name => "facebook_datum[fan_cost]"
    end
  end
end
