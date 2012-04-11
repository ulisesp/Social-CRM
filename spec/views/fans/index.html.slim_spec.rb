require 'spec_helper'

describe "fans/index.html.slim" do
  before(:each) do
    assign(:fans, [
      stub_model(Fan,
        :new => 1,
        :total => 1,
        :goal => 1,
        :id_soc_net => 1,
        :id_client => 1
      ),
      stub_model(Fan,
        :new => 1,
        :total => 1,
        :goal => 1,
        :id_soc_net => 1,
        :id_client => 1
      )
    ])
  end

  it "renders a list of fans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
