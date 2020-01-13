class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_with ::ScorpValidator
  validates :email, format: { :with => /\w\@gmail.com/ }, uniqueness: true
  # validates :nome, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }
  # validates :sobrenome, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }
  # validates :orgao_emissor, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }
  # validates :nome_fantasia, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }
  # validates :razao_social, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }
  # validates :cnpj, format: { :with => /\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}/ }, length: { :maximum => 18 }, uniqueness: true
  # validates :cep, format: { :with => /\d{5}\-\d{3}/ }, length: { :maximum => 9 }
  # validates :cpf, format: { :with => /\d{3}\.\d{3}\.\d{3}\-\d{2}/ }, length: { :maximum => 14 }, uniqueness: true
  # validates :logradouro, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }, length: { :maximum => 40 }
  # validates :bairro, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }, length: { :maximum => 30 }
  # validates :cidade, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }, length: { :maximum => 30 }
  # validates :complemento, format: { :with => /[a-zA-Z\u00C0-\u00FF ]+/i }, length: { :maximum => 10 }

  def self.searchEmail(email)
    if email
        where('email = ?',email).first
    end
  end

  def self.searchCPF(cpf)
    if cpf
        where('cpf = ?',cpf).first
    end
  end

  def self.searchCNPJ(cnpj)
    if cnpj
        where('cnpj = ?',cnpj).first
    end
  end
end