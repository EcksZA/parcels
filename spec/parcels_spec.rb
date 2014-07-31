require 'rspec'
require 'parcels'

describe "Parcel" do
  it "initializes properties of the Parcel" do
    package = Parcel.new(10,5,20,20, "package")
    package.should be_an_instance_of Parcel
  end

  it 'sets properties for height, width, length, weight, and name' do
    package = Parcel.new(10,5,20,20, "package")
    package.height.should eq 10
    package.width.should eq 5
    package.length.should eq 20
    package.weight.should eq 20
    package.name.should eq "package"
  end

  it 'calculates the volume of the package on instances of parcel' do
    package = Parcel.new(10,5,20,20, "package")
    package.volume.should eq 1000
  end

  it 'calculates the cost of shipping of the package based on weight and volume' do
    package = Parcel.new(10,5,20,20,"package")
    package.volume
    package.cost_to_ship.should eq 1540
  end
end
