module SpecUtils
  def create_sick_leave_credit(user)

  end

  def login_a_user(user)
    session[:user_id] = user.id
  end

  def logout_user
    session[:user_id] = nil
  end

  def current_user
    User.find(session[:user_id])
  end
end