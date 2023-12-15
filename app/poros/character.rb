class Character
  attr_reader :name, 
              :allies, 
              :enemies, 
              :affiliation, 
              :photo_url

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies] || "none"
    @enemies = attributes[:enemies] || "none"
    @affiliation = attributes[:affiliation]
    @photo_url = attributes[:photoUrl]
  end
end