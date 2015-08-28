require "spec_helper"

describe ListaDeActividadesController do
  describe "routing" do

    it "routes to #index" do
      get("/lista_de_actividades").should route_to("lista_de_actividades#index")
    end

    it "routes to #new" do
      get("/lista_de_actividades/new").should route_to("lista_de_actividades#new")
    end

    it "routes to #show" do
      get("/lista_de_actividades/1").should route_to("lista_de_actividades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lista_de_actividades/1/edit").should route_to("lista_de_actividades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lista_de_actividades").should route_to("lista_de_actividades#create")
    end

    it "routes to #update" do
      put("/lista_de_actividades/1").should route_to("lista_de_actividades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lista_de_actividades/1").should route_to("lista_de_actividades#destroy", :id => "1")
    end

  end
end
