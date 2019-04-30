class ApplicationController < ActionController::Base
    layout :changeLayout

    private 
        def changeLayout
            if devise_controller?
                "login"
            else
                "application"
            end
        end
end
