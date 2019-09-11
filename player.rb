class Player

  attr_accessor :name, :lives

  def initialize(name, lives=6)
    @name = name
    @lives = lives
  end

end
