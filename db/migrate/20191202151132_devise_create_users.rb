# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      #PF ou PJ
      t.string :pf_pj, null: false, default: "" 
      
      #Dados para PF
      t.string :nome, null: false, default: ""
      t.string :sobrenome, null: false, default: ""
      t.string :cpf, null: false, default: ""
      t.string :documento, null: false, default: ""
      t.string :orgao_emissor, null: false, default: ""
      t.string :estado_emissor, null: false, default: ""
      t.datetime :data_emissao, null: false, default: ""

      # #Dados para PJ
      t.string :nome_fantasia, null: false, default: ""
      t.string :razao_social, null: false, default: ""
      t.string :cnpj, null: false, default: ""

      # #Dados de Endereço
      t.string :cep, null: false, default: ""
      t.string :logradouro, null: false, default: ""
      t.string :numero, null: false, default: ""
      t.string :complemento, null: true, default: ""
      t.string :bairro, null: false, default: ""
      t.string :cidade, null: false, default: ""
      t.string :estado, null: false, default: ""


      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
