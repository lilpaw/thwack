get '/' do
  @users = User.all
  @rounds = Round.all
  erb :index
end

get '/sessions/new' do
  erb :login
end

post '/sessions' do
  @user = User.where(email: params[:email]).first

  if @user && (@user.password == params[:password])
    session[:user_id] = @user.id
    status 200
    redirect '/'
  else
    status 400
    redirect '/'
  end
end

delete '/sessions/:id' do
  session.delete(:user_id)
  redirect '/'
end

get '/users/new' do
  erb :signup
end

post '/users' do
  # sign-up a new user
  user = User.new(params[:user])
  if user.save
    redirect '/'
  else
    status 400
    redirect '/users/new'
  end
end

get '/new_round' do
  erb :index
end

post '/new_round' do
  @round = Round.create(user_id: current_user.id, num_of_ends: params[:num_of_ends], arrows_per_end: params[:arrows_per_end], location: params[:location])

    (@round.arrows_per_end * @round.num_of_ends).times do |arrow|
      Arrow.create(round_id: @round.id, score: params[:score])
    end

  redirect '/'
end

