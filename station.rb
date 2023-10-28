require_relative 'instance_counter'
class Station
  include InstanceCounter

  attr_reader :name, :trains

  @@all_stations = []

  def self.all
    @@all_stations
  end

  def initialize(name)
    @name = name
    @trains = []
    @@all_stations.push(self)
    register_instance
  end

  def types
    types = {}
    self.trains.map { |t| types[t.type].nil? ? types[t.type] = 1 : types[t.type] += 1 }
    types
  end

  def arrive(train)
    self.trains.push(train)
  end

  def depart(train)
    self.trains.delete(train)
  end

end
