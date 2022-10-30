# frozen_string_literal: true

require "/home/ksusha/uni/labs_web/laba7/mod_file/lib/mod_file"

require "spec_helper"

# testing ModFile
describe ModFile do
  include ModFile
  it "Making random file with no-zero length" do
    expect(File.zero?(ModFile.generating_random_file)).to eq false
  end

  it "Making modification of random file with no-zero length" do
    expect(File.zero?(ModFile.make_modification_file)).to eq false
  end

  it "Make correctly upper to lower" do
    content_f = File.open("F.txt", "r").read.split
    content_g = File.open("G.txt", "r").read.split
    expect(content_g).to eq(content_f.map(&:downcase))
  end
end
