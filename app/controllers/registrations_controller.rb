class RegistrationsController < Devise::RegistrationsController
    def emailcheck
        @user = User.searchEmail(params[:email])
        respond_to do |format|
        format.json {render :json => @user.present?}
        end
    end

    def cpfcheck
        @user = User.searchCPF(params[:cpf])
        respond_to do |format|
        format.json {render :json => @user.present?}
        end
    end

    def cnpjcheck
        @user = User.searchCNPJ(params[:cnpj])
        respond_to do |format|
        format.json {render :json => @user.present?}
        end
    end

    protected
    # Definir o direcionamento após o cadastro
    def after_sign_up_path_for(resource)
        '/home/sucesso'
    end
end