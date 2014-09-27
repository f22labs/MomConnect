class UsersController < ApplicationController

  def create
    user_params[:conception_timestamp] = Time.new(user_params[:conception_timestamp].split("/")[2], user_params[:conception_timestamp].split("/")[0], user_params[:conception_timestamp].split("/")[1]).to_i
    render :json => User.create!(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:phone, :conception_timestamp, :locale_id)
  end
end