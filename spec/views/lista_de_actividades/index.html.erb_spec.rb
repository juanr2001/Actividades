require 'spec_helper'

describe "lista_de_actividades/index" do
  before(:each) do
    assign(:lista_de_actividades, [
      stub_model(ListaDeActividade,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(ListaDeActividade,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of lista_de_actividades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
