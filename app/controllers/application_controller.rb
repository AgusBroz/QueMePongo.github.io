class ApplicationController < ActionController::Base
    before_action :authenticate_usuario!

    NotAuthorized = Class.new(StandardError)

    rescue_from ActionController::RoutingError, with: -> { render_404 }
    rescue_from ActiveRecord::RecordNotFound, with: :render_404  

    def render_404
        respond_to do |format|
            format.html { render template: 'errores/error_404', status: 404 }
            format.all { render nothing: true, status: 404 }
        end
    end

    rescue_from ApplicationController::NotAuthorized do |exception|
        render_error_page(status: 401)
    end

    def render_error_page(status:)
        respond_to do |format|
          #format.json { render json: {errors: [message: "#{status} #{text}"]}, status: status }
          #format.html { render template: template, status: status, layout: false }
          #format.any  { head status }
            format.html { render template: 'errores/error_401', status: 401 }
            format.all { render nothing: true, status: 401 }
        end
    end
end
