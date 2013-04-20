class CreateCompromisosEstudiantes < ActiveRecord::Migration
  def change
    create_table :compromisos_estudiantes, :id => false do |t|
      t.integer :compromiso_id
      t.integer :estudiante_id
      t.boolean :finalizado, :default => false
      t.timestamps
    end
  end
end
