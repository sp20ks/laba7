# frozen_string_literal: true

require_relative "classes"

# module call
module Call
  def self.call
    a = Dot.new(10, 0.5)
    a.print

    b = Circle.new(10, 0.5, 3)
    b.print
  end
end

Call.call
