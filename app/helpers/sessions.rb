helpers do

  def current_user
        # TODO: return the current user if there is a user signed in.

    if session[:user_id]
      User.find(session[:user_id])
    end

  end

  def current_round
    Round.where(user_id: session[:user_id]).last
  end


end
