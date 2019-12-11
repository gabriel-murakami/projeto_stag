class HomeController < ApplicationController
    def list
        @users = User.all
    end

    def sucesso
    end
end