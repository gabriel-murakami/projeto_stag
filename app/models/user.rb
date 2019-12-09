class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_with ::ScorpValidator
  validates :email, format: { :with => /\w\@gmail.com/ }
  # validates :nome, format: { :with => /\w+/ }
  # validates :sobrenome, format: { :with => /\w+?\s/ }
  # validates :documento, format: { :with => /\w+?\s/ }
  # validates :orgao_emissor, format: { :with => /\w+/ }
  # validates :nome_fantasia, format: { :with => /\w+?\s/ }
  # validates :razao_social, format: { :with => /\w+?\s/ }
  # validates :cnpj, format: { :with => /\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}/ }, length: { :maximum => 18 } 
  # validates :cep, format: { :with => /\d{5}\-\d{3}/ }, length: { :maximum => 9 } 
  # validates :logradouro, format: { :with => /\w+?\s/ }, length: { :maximum => 40 }
  # validates :bairro, format: { :with => /\w+?\s/ }, length: { :maximum => 30 }
  # validates :cidade, format: { :with => /\w+?\s/ }, length: { :maximum => 30 }
  # validates :complemento, format: { :with => /\w+?\s/ }, length: { :maximum => 10 }
end
