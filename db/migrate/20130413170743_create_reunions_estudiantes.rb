class CreateReunionsEstudiantes < ActiveRecord::Migration
  def change
    create_table :reunions_estudiantes do |t|
      t.integer :reunion_id
      t.integer :estudiante_id
      t.boolean :finalizado

      t.timestamps
    end
  end
end
