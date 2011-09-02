require 'spec_helper'

describe "rols/new.html.slim" do
  before(:each) do
    assign(:rol, stub_model(Rol,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new rol form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rols_path, :method => "post" do
      assert_select "input#rol_name", :name => "rol[name]"
    end
  end
end
