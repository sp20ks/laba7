# frozen_string_literal: true

require_relative "mod_file/version"
require "faker"

# module ModFile
module ModFile
  @filename_before = "F.txt"

  @filename_after = "G.txt"

  def self.generating_random_file
    File.open(@filename_before, "w+") do |file|
      Faker::Number.number(digits: 2).times { file.puts Faker::Name.name_with_middle }
    end
    @filename_before
  end

  def self.make_modification_file
    File.open(@filename_after, "w+") do |file|
      ModFile.generating_random_file
      File.foreach(@filename_before) { |l| file.puts l.downcase }
    end
    @filename_after
  end
end
