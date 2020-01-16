class RegistrationsController < Devise::RegistrationsController
    def emailcheckedit()
        @user = User.searchEmail(params[:email])
        puts @user
        if current_user.email == @user.email
            @user = nil
        end
        respond_to do |format|
        format.json {render :json => @user.present?}
        end
    end

    def emailcheck()
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

end