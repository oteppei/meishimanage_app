class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(
      user_name = params[:name],
      password = params[:password]
    )
  end
  if @user.save
    session[:user_id] = @user.id
    flash[:notice] = "ユーザー登録が完了しました"
    redirect_to("/users/#{@user.id}")
  else
    render(users/new)
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def login_form
  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/users/#{@user.id}")
    else
      @error_message = "アカウント名またはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      render("users/login_form")
    end
  end
end
