class PasswordsController < Devise::PasswordsController

    protected
    def after_resetting_password_path_for(resource)
        '/home/sucesso_senha'
    end
end