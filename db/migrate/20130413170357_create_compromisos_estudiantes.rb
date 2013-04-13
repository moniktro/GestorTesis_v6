class CreateCompromisosEstudiantes < ActiveRecord::Migration
  def change
    create_table :compromisos_estudiantes do |t|
      t.integer :compromiso_id
      t.integer :estudiante_id
      t.boolean :finalizado

      t.timestamps
    end
  end
end
