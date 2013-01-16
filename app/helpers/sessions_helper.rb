module SessionsHelper

  def sign_in(user)
    #equals cookies[:remember_token] = { value:   user.remember_token, expires: 20.years.from_now.utc }
    #site-wide SSL minimizes attack capabilities
    cookies.permanent[:remember_token] = user.remember_token

    #Because of the way Active Record synthesizes attributes based on database columns, without self the assignment would create a local variable called remember_token
    self.current_user = user
  end

  #[TW]more research needed
  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
