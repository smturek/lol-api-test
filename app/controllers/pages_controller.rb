class PagesController < ApplicationController

  def index

  end

  def champions
    @import = LeagueAPI.new()
    @champion_list = @import.champions
  end

  def champion
    @import = LeagueAPI.new()
    @champion = @import.champion(params[:id])
  end

  def items
    @import = LeagueAPI.new()
    @item_list = @import.items
  end

end
