class CreateTeses < ActiveRecord::Migration
  def change
    create_table :teses do |t|
      t.string :nombreTesis
      t.string :areaInvestigacion
      t.date :fechaInicio
      t.date :fechaFin
      t.text :descripcionTesis
      t.boolean :finalizado
      t.integer :profesor_id

      t.timestamps
    end
  end
end
