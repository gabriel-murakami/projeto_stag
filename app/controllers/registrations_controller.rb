class RegistrationsController < Devise::RegistrationsController
    protected

    # Definir o direcionamento após o cadastro
    def after_sign_up_path_for(resource)
        '/home/sucesso'
    end
end