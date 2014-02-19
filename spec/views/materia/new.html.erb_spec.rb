require 'spec_helper'

describe "materia/new" do
  before(:each) do
    assign(:materium, stub_model(Materium,
      :nombre => "MyString",
      :descripcion => "MyString"
    ).as_new_record)
  end

  it "renders new materium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", materia_path, "post" do
      assert_select "input#materium_nombre[name=?]", "materium[nombre]"
      assert_select "input#materium_descripcion[name=?]", "materium[descripcion]"
    end
  end
end
