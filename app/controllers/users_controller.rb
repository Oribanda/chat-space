class UsersController < ApplicationController
  def index
    #キーワードがなければnilを返す
    return nili if params[:keyword] == ""
    #その文字を含むユーザーを探してきて、@usersに代入。ただしログインしている自分は除く。10人まで。
    @users = User.where( ['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

end