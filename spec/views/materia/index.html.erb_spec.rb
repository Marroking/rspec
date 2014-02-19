require 'spec_helper'

describe "materia/index" do
  before(:each) do
    assign(:materia, [
      stub_model(Materium,
        :nombre => "Nombre",
        :descripcion => "Descripcion"
      ),
      stub_model(Materium,
        :nombre => "Nombre",
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of materia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
