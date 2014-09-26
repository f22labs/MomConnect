class TipController < ApplicationController

  def create
    # when is in days
    render :json => Tip.create!(tip_params)
  end

  private

  def tip_params
    params.require(:tip).permit(:what, :when)
  end
end