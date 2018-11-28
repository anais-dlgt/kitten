module CurrentUser
  private

  def set_user
    @user = User.find_by(id: session[:user_id]) || User.create
    session[:user_id] ||= @user.id
  end
end
