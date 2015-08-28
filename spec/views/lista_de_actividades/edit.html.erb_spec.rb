require 'spec_helper'

describe "lista_de_actividades/edit" do
  before(:each) do
    @lista_de_actividade = assign(:lista_de_actividade, stub_model(ListaDeActividade,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit lista_de_actividade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lista_de_actividade_path(@lista_de_actividade), "post" do
      assert_select "input#lista_de_actividade_title[name=?]", "lista_de_actividade[title]"
      assert_select "textarea#lista_de_actividade_description[name=?]", "lista_de_actividade[description]"
    end
  end
end
