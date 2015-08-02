class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :authenticate
    before_action :authenticate_api_client

    private
    def authenticate_api_client
        users = {
            "client01" => "12345678"
        }
        if user = authenticate_with_http_basic { |u, p| users[u] == p;}
            @current_user = user
        else
            request_http_basic_authentication
        end if controller_name == "api"
    end

    def authenticate
        users = {
            "admin" => "12345678"
        }
        if user = authenticate_with_http_basic { |u, p| users[u] == p;}
            @current_user = user
        else
            request_http_basic_authentication
        end if controller_name != "home" and controller_name != "api" and (controller_name == "locations" and action_name != "show")
    end
end
