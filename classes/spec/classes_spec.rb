# frozen_string_literal: true

require "/home/ksusha/uni/labs_web/laba7/classes/lib/classes"

require "spec_helper"

# testing classes
describe "classes" do
  context "Checking parents" do
    it "Means Dot is parent of Circle" do
      expect(Circle.superclass).to eq Dot
    end
  end

  context "Checking child" do
    it "Means Circle is child of Dot" do
      expect(Circle < Dot).to eq true
    end
  end

  context "Checking transfer from a radial system to a Cartesian one" do
    it "Transfering x is okey" do
      test_obj = Dot.new(10, 0.5)
      expect(test_obj.cartesian_coordinates[0]).to be_within(0.001).of(8.775)
    end

    it "Transfering y is okey" do
      test_obj = Dot.new(10, 0.5)
      expect(test_obj.cartesian_coordinates[1]).to be_within(0.001).of(4.794)
    end
  end
end
