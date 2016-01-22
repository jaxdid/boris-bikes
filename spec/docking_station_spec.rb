require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to(:release_bike)} #ok

	it 'release a working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }#ok

  it { is_expected.to respond_to(:bikes) }#ok

  describe '#release_bike method' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock method' do
    it 'docks something' do #ok
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do #ok
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it 'raises an error when docking more than 20 bikes' do
      expect { 21.times{subject.dock(Bike.new)} }.to raise_error 'Docking station full'
    end
  end

end
