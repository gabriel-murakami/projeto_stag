# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_02_151132) do

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "pf_pj", default: "", null: false
    t.string "nome", default: "", null: false
    t.string "sobrenome", default: "", null: false
    t.string "cpf", default: "", null: false
    t.string "documento", default: "", null: false
    t.string "orgao_emissor", default: "", null: false
    t.string "estado_emissor", default: "", null: false
    t.date "data_emissao", null: false
    t.string "nome_fantasia", default: "", null: false
    t.string "razao_social", default: "", null: false
    t.string "cnpj", default: "", null: false
    t.string "cep", default: "", null: false
    t.string "logradouro", default: "", null: false
    t.string "numero", default: "", null: false
    t.string "complemento", default: ""
    t.string "bairro", default: "", null: false
    t.string "cidade", default: "", null: false
    t.string "estado", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
