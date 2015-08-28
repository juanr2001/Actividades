require 'spec_helper'

describe "ListaDeActividades" do
  describe "GET /lista_de_actividades" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lista_de_actividades_path
      response.status.should be(200)
    end
  end
end
