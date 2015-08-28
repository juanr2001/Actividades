require 'spec_helper'

describe "lista_de_actividades/new" do
  before(:each) do
    assign(:lista_de_actividade, stub_model(ListaDeActividade,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new lista_de_actividade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lista_de_actividades_path, "post" do
      assert_select "input#lista_de_actividade_title[name=?]", "lista_de_actividade[title]"
      assert_select "textarea#lista_de_actividade_description[name=?]", "lista_de_actividade[description]"
    end
  end
end
