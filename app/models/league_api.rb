class LeagueAPI

  def initialize
    @conn = Faraday.new(:url => 'https://na.api.pvp.net')
  end

  def champions
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/champion?"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def champion(id)
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/champion/#{id}?champData=all&"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

end
