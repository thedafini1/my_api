class SessionsController < ApplicationController
    skip_before_action :authorize_request, only: %i[ login ]
    def login
        user = User.find_by(email: params[:email])
    
        if user&.authenticate(params[:password])
          token = JwtService.encode({user_id: user.id})
          render json: {token: token, user: user}, status: 200
        else
          render json: {error: 'Invalid email or password'}, status: :unauthorized
        end
      end

      def logout
        if @current_user.update(authentication_token: nil)
          render json: {message: 'Logged out successfully'}, status: :ok
        else
          render json: {error: 'Unable to logout'}, status: :unprocessable_entity
        end
      end
end
