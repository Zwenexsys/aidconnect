class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :authenticate

    private
    def authenticate
        users = {
            "admin" => "12345678"
        }
        if user = authenticate_with_http_basic { |u, p| users[u] == p;}
            @current_user = user
        else
            request_http_basic_authentication
        end if controller_name != "home"
    end
end
