class SearchFacade
  def self.by_nation(nation)
    json_response = SearchService.by_nation(nation)
    json_response.map do |character|
      Character.new(character)
    end
  end
end