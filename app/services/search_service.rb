class SearchService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/api/v1/') do |faraday|
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.by_nation(nation)
    get_url("characters?affiliation=#{nation}")
  end
end
