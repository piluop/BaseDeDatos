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

ActiveRecord::Schema.define(:version => 20131124012947) do

  create_table "actividades", :force => true do |t|
    t.string    "nombre"
    t.integer   "duracion"
    t.integer   "costo"
    t.string    "descripcion"
    t.date      "fecha"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "books", :force => true do |t|
    t.string    "isbn"
    t.string    "title"
    t.integer   "year"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string    "nombre"
    t.integer   "edad"
    t.string    "nacionalidad"
    t.string    "pasaporte"
    t.timestamp "created_at",   :null => false
    t.timestamp "updated_at",   :null => false
  end

  create_table "empleados", :force => true do |t|
    t.string    "nomina"
    t.integer   "sueldo"
    t.integer   "edad"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "grupos", :force => true do |t|
    t.string    "nombre"
    t.integer   "capacidad"
    t.date      "fecha"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "hoteles", :force => true do |t|
    t.string    "nombre"
    t.string    "categoria"
    t.string    "ubicacion"
    t.date      "fechaen"
    t.date      "fechasa"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "ingresos", :force => true do |t|
    t.integer   "ingresos"
    t.date      "fecha"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "organizadors", :force => true do |t|
    t.string    "nombre"
    t.integer   "edad"
    t.string    "nomina"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "transportes", :force => true do |t|
    t.string    "tipo"
    t.date      "fecha"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string    "name"
    t.integer   "edad"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "viajes", :force => true do |t|
    t.string    "nombre"
    t.integer   "duracion"
    t.integer   "costo"
    t.string    "continente"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

end
