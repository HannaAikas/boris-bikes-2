require 'DockingStation'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike_check).to eq bike
  end

  describe "#release_bike" do
    it "raises an error when release_bike if no bikes" do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
    it "releases a bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
  end

end
