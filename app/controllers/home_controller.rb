class HomeController < ApplicationController
    def list
        @users = User.all
    end

    def sucesso
        @user = User.last()
    end
end