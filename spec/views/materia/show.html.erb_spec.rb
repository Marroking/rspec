require 'spec_helper'

describe "materia/show" do
  before(:each) do
    @materium = assign(:materium, stub_model(Materium,
      :nombre => "Nombre",
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Descripcion/)
  end
end
