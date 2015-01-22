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

  def randomizer
    @roles = ["top", "jungle", "mid", "adc", "support"]
    @players = ["Vico", "Liliana", "Dotabase", "younglung", "nerdybynature28"]

    @roles = @roles.shuffle
    #@players = @players.shuffle
  end

end
