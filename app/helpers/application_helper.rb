module ApplicationHelper

    def user_signed_in?
        false || true
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user])
    end
 
end
