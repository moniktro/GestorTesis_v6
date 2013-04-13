class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
