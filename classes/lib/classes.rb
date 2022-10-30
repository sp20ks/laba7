# frozen_string_literal: true

require_relative "classes/version"

# parent class
class Dot
  attr_accessor :angle, :radius

  include Math

  def initialize(value_f, value_s)
    @radius = value_f
    @angle = value_s
  end

  def print
    p "Coordinates: #{radius}, #{angle}"
  end

  def cartesian_coordinates
    [radius * Math.cos(angle), radius * Math.sin(angle)]
  end
end

# child class
class Circle < Dot
  attr_reader :circle_radius

  def initialize(first, second, third)
    @circle_radius = third
    super(first, second)
  end

  def print
    p "R = #{circle_radius}; x of center #{cartesian_coordinates[0]}; y of center #{cartesian_coordinates[1]}"
  end
end
