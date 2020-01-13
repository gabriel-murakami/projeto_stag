class HomeController < ApplicationController    
    
    def list
        if current_user.admin == true
            @users = User.all
        else
            redirect_to root_path
        end
    end
end