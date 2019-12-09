class HomeController < ApplicationController
    def list
        @users = User.all
    end
end