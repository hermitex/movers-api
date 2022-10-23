class ApplicationController < ActionController::API
    include ActionController::Cookies
    include ::ActionController::Serialization

    wrap_parameters format: []
end
