class RegistrationsController < Devise::RegistrationsController
    def emailcheck
        @user = User.searchEmail(params[:email])
        respond_to do |format|
        format.json {render :json => @user.present?} #sir Deep suggestion to return true or false for email_exists or the code below
         #format.json {render :json => @user} #this will output null if email is not in the database
        end
    end

    def cpfcheck
        @user = User.searchCPF(params[:cpf])
        respond_to do |format|
        format.json {render :json => @user.present?} #sir Deep suggestion to return true or false for email_exists or the code below
         #format.json {render :json => @user} #this will output null if email is not in the database
        end
    end

    def cnpjcheck
        @user = User.searchCNPJ(params[:cnpj])
        respond_to do |format|
        format.json {render :json => @user.present?} #sir Deep suggestion to return true or false for email_exists or the code below
         #format.json {render :json => @user} #this will output null if email is not in the database
        end
    end

    protected
    # Definir o direcionamento após o cadastro
    def after_sign_up_path_for(resource)
        '/home/sucesso'
    end
end