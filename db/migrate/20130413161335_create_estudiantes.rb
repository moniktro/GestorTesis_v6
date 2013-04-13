class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombreEstudiante
      t.string :codigoEstudiante
      t.string :correoElectronico
      t.string :disponibilidadHoraria
      t.integer :tesis_id

      t.timestamps
    end
  end
end
