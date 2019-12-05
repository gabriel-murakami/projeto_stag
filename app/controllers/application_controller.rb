class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    #Definir o direcionamento após o login
    def after_sign_in_path_for(resource)
        '/'
    end

    #Definir o direcionamento após o cadastro
    # def after_sign_up_path_for(resource)
    #     '/'
    # end

    protected

    #Definir os parâmetros permitidos
    def configure_permitted_parameters
      attributes = [:email, :password, :current_password, :password_confirmation,
        :pf_pj, :nome, :sobrenome, :cpf, :documento, :orgao_emissor, :estado_emissor,
        :data_emissao, :nome_fantasia, :razao_social, :cnpj, :cep, :logradouro, :numero,
        :complemento, :bairro, :cidade, :estado]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end
end
