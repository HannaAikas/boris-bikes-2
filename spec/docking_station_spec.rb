require 'DockingStation'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "gets a bike, and expects the bike to be working" do
    # below code tests creating a new instance of Bike when you call release_bike
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end



  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike_check).to eq bike

  end

end
