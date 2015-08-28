require 'spec_helper'

describe "lista_de_actividades/show" do
  before(:each) do
    @lista_de_actividade = assign(:lista_de_actividade, stub_model(ListaDeActividade,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
