class TipController < ApplicationController

  def create
    user_params[:user][:date] = Time.at(user_params[:user][:date]).to_i
    render :json => User.create!(user_params)
  end

  private

  def user_params
    params.require(:tip).permit(:what, :when)
  end
end