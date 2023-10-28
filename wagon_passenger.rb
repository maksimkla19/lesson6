
require_relative 'wagon'

class WagonPassenger < Wagon
  def initialize
    super(type:passenger)
  end
end

