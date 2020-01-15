class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_with ::ScorpValidator
  validates :email, format: { :with => /\w\@gmail.com/ }, uniqueness: true


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