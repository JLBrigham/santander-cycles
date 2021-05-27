require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
   it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
   end

   it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
   end

   end

  it { is_expected.to respond_to :release_bike }



it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
end

it { is_expected.to respond_to(:dock).with(1).argument }

describe '#dock' do

it 'docks something' do
    bike = Bike.new
    expect{subject.dock(bike)}.to change{subject.bikes.length}.by(1)
end

it 'raises an error when full' do
    DockingStation::DEFAULT_CAPACITY.times do
    subject.dock(Bike.new) 
    end
    expect {subject.dock(Bike.new)}.to raise_error 'Docking station full'
end

end

it { is_expected.to respond_to :bikes }


it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
end
end