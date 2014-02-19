require 'spec_helper'

describe "materia/edit" do
  before(:each) do
    @materium = assign(:materium, stub_model(Materium,
      :nombre => "MyString",
      :descripcion => "MyString"
    ))
  end

  it "renders the edit materium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", materium_path(@materium), "post" do
      assert_select "input#materium_nombre[name=?]", "materium[nombre]"
      assert_select "input#materium_descripcion[name=?]", "materium[descripcion]"
    end
  end
end
