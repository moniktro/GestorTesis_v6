# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130426104248) do

  create_table "compromisos", :force => true do |t|
    t.string   "asunto"
    t.string   "descripcionCompromiso"
    t.date     "fechaLimite"
    t.boolean  "finalizado"
    t.integer  "estudiantes_id"
    t.integer  "profesors_id"
    t.integer  "teses_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "compromisos_estudiantes", :id => false, :force => true do |t|
    t.integer  "compromiso_id"
    t.integer  "estudiante_id"
    t.boolean  "finalizado"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "estudiantes", :force => true do |t|
    t.string   "nombreEstudiante"
    t.string   "codigoEstudiante"
    t.string   "correoElectronico"
    t.string   "disponibilidadHoraria"
    t.integer  "tesis_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "calendar_id"
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "profesors", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reunions", :force => true do |t|
    t.string   "asunto_reu"
    t.datetime "fecha_reu"
    t.time     "duracion_reu"
    t.string   "lugar"
    t.integer  "estudiantes_id"
    t.integer  "profesors_id"
    t.integer  "teses_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "reunions_estudiantes", :force => true do |t|
    t.integer  "reunion_id"
    t.integer  "estudiante_id"
    t.boolean  "finalizado"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "teses", :force => true do |t|
    t.string   "nombreTesis"
    t.string   "areaInvestigacion"
    t.date     "fechaInicio"
    t.date     "fechaFin"
    t.text     "descripcionTesis"
    t.boolean  "finalizado"
    t.integer  "profesor_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
