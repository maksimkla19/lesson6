
require_relative 'wagon'

class WagonCargo < Wagon

  def initialize
    @type = :cargo
    super
  end
  
end
