# frozen_string_literal: true

require_relative "mod_file"

# module Maim
module Main
  include ModFile
  def self.call
    ModFile.make_modification_file
  end
end

Main.call
