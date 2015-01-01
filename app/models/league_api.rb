class LeagueAPI

  def initialize
    @conn = Faraday.new(:url => 'https://na.api.pvp.net')
  end

  def champions
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/champion?api_key=11c8eca6-9ae3-4e06-aef0-4b47eff83f4e"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def champion(id)
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/champion/#{id}?champData=all&api_key=11c8eca6-9ae3-4e06-aef0-4b47eff83f4e"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def items
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/item?api_key=11c8eca6-9ae3-4e06-aef0-4b47eff83f4e"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def item(id)
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/item/#{id}?champData=all&api_key=11c8eca6-9ae3-4e06-aef0-4b47eff83f4e"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

end
