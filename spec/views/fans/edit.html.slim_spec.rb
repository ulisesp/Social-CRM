require 'spec_helper'

describe "fans/edit.html.slim" do
  before(:each) do
    @fan = assign(:fan, stub_model(Fan,
      :new => 1,
      :total => 1,
      :goal => 1,
      :id_soc_net => 1,
      :id_client => 1
    ))
  end

  it "renders the edit fan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fans_path(@fan), :method => "post" do
      assert_select "input#fan_new", :name => "fan[new]"
      assert_select "input#fan_total", :name => "fan[total]"
      assert_select "input#fan_goal", :name => "fan[goal]"
      assert_select "input#fan_id_soc_net", :name => "fan[id_soc_net]"
      assert_select "input#fan_id_client", :name => "fan[id_client]"
    end
  end
end
