require_relative 'instance_counter'
class Route
  include InstanceCounter

  attr_reader :start, :finish, :points

  def initialize(start, finish)
    @start = start
    @finish = finish
    @points = []
    register_instance
  end

  def route
    [@start, @points, @finish].flatten.compact
  end

  def add(station)
    self.points.push(station)
  end

  def del(station)
    self.points.delete(station)
  end

end
