helpers do

  def current_user
    if !session[:user_id]
      false
    elsif
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end

  def sign_in(user_id)
    session[:user_id] = user_id
  end

  def sign_out
    session[:user_id] = nil
  end

end