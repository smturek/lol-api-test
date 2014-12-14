class PagesController < ApplicationController

  def index
    @import = LeagueAPI.new()
    @champion_list = @import.champions
  end

  def show
    @import = LeagueAPI.new()
    @champion = @import.champion(params[:id])
  end

end
