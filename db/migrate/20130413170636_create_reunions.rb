class CreateReunions < ActiveRecord::Migration
  def change
    create_table :reunions do |t|
      t.string :asunto_reu
      t.datetime :fecha_reu
      t.time :duracion_reu
      t.string :lugar
      t.integer :estudiantes_id
      t.integer :profesors_id
      t.integer :teses_id

      t.timestamps
    end
  end
end
