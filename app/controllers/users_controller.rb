class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(
      user_name = params[:name]
      password = params[:password]
    )
  end
  if @user.save
    session:user_id = @user.id
    flash[:notice] = "ユーザー登録が完了しました"
    redirect_to("/users/#{@user.id}")
  else
    render(users/new)
  end
end
