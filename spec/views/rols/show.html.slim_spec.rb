require 'spec_helper'

describe "rols/show.html.slim" do
  before(:each) do
    @rol = assign(:rol, stub_model(Rol,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
