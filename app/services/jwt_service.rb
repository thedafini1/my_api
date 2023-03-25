# app/services/jwt_service.rb

require 'jwt'

module JwtService
  HMAC_SECRET = Rails.application.secrets.secret_key_base

  class InvalidToken < StandardError; end

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, HMAC_SECRET)
  end

  def self.decode(token)
    begin
      body = JWT.decode(token, HMAC_SECRET)[0]
      HashWithIndifferentAccess.new body
    rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError => e
      raise InvalidToken, e.message
    end
  end
end
