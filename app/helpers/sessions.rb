helpers do

  def current_user
        # TODO: return the current user if there is a user signed in.

    if session[:user_id]
      User.find(session[:user_id])
    end

  end

  # def current_round
  #   if session[:user_id]
  #     Round.find(user_id: current_round.id)
  #   end
  # end


end
