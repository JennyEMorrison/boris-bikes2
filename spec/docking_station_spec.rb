require './lib/docking_station'

describe DockingStation do
  
  it { is_expected.to respond_to :release_bike }
    
   it 'releases working bikes' do
     bike = Bike.new
     subject.dock(bike)
     bike = subject.release_bike
     expect(bike).to be_working
   end
  
  it { is_expected.to respond_to(:dock).with(1).argument }
  #it {is_expected.to respond_to :bike }

  #it 'docks something' do
  #  bike = Bike.new
    # We want to return the bike we dock
 #   expect(subject.dock(bike)).to eq bike
 # end
  
  describe ' #release_bike a' do

    it ' releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    # we want to release the bike we docked
    expect(subject.release_bike).to eq bike
    end
      
  end
    
  # it 'returns docked bikes' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   # Again, we need to return the bike we just docked
  #   expect(subject.bike).to eq bike
  # end
  

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error message when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock Bike.new
      end
    expect { subject.dock Bike.new }.to raise_error "docking station full"
    end
  end
  #20.times { subject.dock Bike.new }
  #describe '#test' do
  #  it "does a when done b" do 
     # variable  = class.new
     # fizz_buzz = FizzBuuzz.new

     # actual = object.method or actual = object.method(3)  #input
     # actual =  fizzbuzz.play(3)
     # expect =  "Fizz"   #outcome of above input
     # refactoring -3 lines
     # expect(fizz_buzz.play(3)).to eq "Fizz"
     #  end
  #end

end



# require "./lib/docking_station.rb"
# require "./lib/bike.rb"