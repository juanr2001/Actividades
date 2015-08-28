class CreateListaDeActividades < ActiveRecord::Migration
  def change
    create_table :lista_de_actividades do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
