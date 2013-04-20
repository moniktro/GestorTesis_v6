class CreateCompromisos < ActiveRecord::Migration
  def change
    create_table :compromisos do |t|
      t.string :asunto
      t.string :descripcionCompromiso
      t.date :fechaLimite
      t.boolean :finalizado, :default => false
      t.integer :estudiantes_id
      t.integer :profesors_id
      t.integer :teses_id

      t.timestamps
    end
  end
end
