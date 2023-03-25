# app/controllers/application_controller.rb

class ApplicationController < ActionController::API
  include ExceptionHandler
  before_action :authorize_request

  private

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JwtService.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue JwtService::InvalidToken
      render json: { error: 'Invalid token' }, status: :unauthorized
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'User not found' }, status: :unauthorized
    end
  end
  def current_user
    @current_user
  end
end
