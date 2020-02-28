class CardsController < ApplicationController
  def new
    @card = new.Card
  end

  def create
    @card = new.Card(
      client_name: params[:name]
      client_company: params[:company]
      user_id: @current_user.id
      relation: params[:relation]
    )
    if @card.save
      flash[:notice] = "名刺登録が完了しました"
      redirect_to("/cards/#{@user.id}/index")
    else
      render("cards/new")
    end
  end

  def index
  end
end
