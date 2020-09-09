class Helpers
  def self.current_user(sessions)
    @user = User.find_by_id(sessions[:user_id])
  end

  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end
