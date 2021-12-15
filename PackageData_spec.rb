require 'rspec'
require_relative 'PackageData.rb'

describe PackageData do
  context "With valid input" do

    it "should give distance between points(string names) and price calculation in parameter" do
      for i in 0..10
      box = PackageData.new(i, i, i, i)
      ponit_of_departure = "Amsterdam"
      destination = "Moscow"
      expect(box.PackageLocation(ponit_of_departure, destination)).to be > 0
      expect(box.PriceCalculation).to be > 0
      end
    end

    it "should give distance between points(coordinates) and price calculation in parameter" do
        for i in 0..10
        box = PackageData.new(i, i, i, i)
        ponit_of_departure = "52.3545543,4.9519029"
        destination = "55.75222, 37.61556"
        expect(box.PackageLocation(ponit_of_departure, destination)).to be > 0
        expect(box.PriceCalculation).to be > 0
        end
    end
  end
end
