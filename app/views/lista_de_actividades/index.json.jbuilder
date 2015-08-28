json.array!(@lista_de_actividades) do |lista_de_actividade|
  json.extract! lista_de_actividade, :id, :title, :description
  json.url lista_de_actividade_url(lista_de_actividade, format: :json)
end
