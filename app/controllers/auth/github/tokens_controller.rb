class Auth::Github::TokensController < ApplicationController

  def create
    token = request.env["omniauth.auth"]["credentials"]["token"]
    uid = request.env["omniauth.auth"]["uid"]
    username = request.env["omniauth.auth"]["info"]["nickname"]
    Token.create(token_string: token, uid: uid, user_id: current_user.id, nickname: username)
    redirect_to dashboard_path
  end
end
