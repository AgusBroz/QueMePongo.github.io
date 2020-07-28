class ErroresController < ApplicationController
    def error_404
        raise ActionController::RoutingError.new('Not Found')
    end
end