require 'car'

describe 'Car' do
describe 'attributes' do

  let( :car ) { Car.new }

  #'let' is better than 'before' to
  #setting up instance variables
  #before(:example) do
  #  @car = Car.new
  #end

  it "allows reading and writing to :make" do
    car.make = 'Test'
    expect(car.make).to eq('Test')
  end
  it "allows reading and writing to :year" do
    car.year = 9999
    expect(car.year).to eq(9999)
  end
  it "allows reading and writing to :color" do
    car.color = 'Foo'
    expect(car.color).to eq('Foo')
  end
  it "allows reading :weels" do
    expect(car.wheels).to eq(4)
  end
end

describe '.colors' do
  let(:colors) { ['blue', 'black', 'red', 'green'] }
  it "returns an array of colors" do
    expect(Car.colors).to match_array(colors)
  end
end

describe '#full_name' do
  let(:honda) { Car.new(:make => 'Honda', :year => 2004, :color => 'blue') }
  let(:new_car) { Car.new }

  it "returns a string of expected format" do
    expect(honda.full_name).to eq('2004 Honda (blue)')
  end
  context "when initialized with no arguments" do
    it "returns string using defaults arguments" do
      expect(new_car.full_name).to eq('2007 Volvo (unknown)')
    end
  end
end
end
