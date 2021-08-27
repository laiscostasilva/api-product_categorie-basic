class Api::BaseController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::RequestForgeryProtection

  # token de CSRF
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
