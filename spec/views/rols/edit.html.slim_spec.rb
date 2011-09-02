require 'spec_helper'

describe "rols/edit.html.slim" do
  before(:each) do
    @rol = assign(:rol, stub_model(Rol,
      :name => "MyString"
    ))
  end

  it "renders the edit rol form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rols_path(@rol), :method => "post" do
      assert_select "input#rol_name", :name => "rol[name]"
    end
  end
end
