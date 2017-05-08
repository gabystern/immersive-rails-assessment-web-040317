class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(guest_id: params[:appearance][:guest_id], episode_id: params[:appearance][:episode_id], rating: params[:appearance][:rating])
    redirect_to sessions_path
  end

  def show
    @appearance = Appearance.find(params[:id])
    @guest = Guest.find_by(id: @appearance.guest_id)
    @episode = Episode.find_by(id: @appearance.episode_id)
  end

end
