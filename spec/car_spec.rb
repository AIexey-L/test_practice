require 'car'

describe 'attributes' do
  it "allows reading and writing to :make" do
    car = Car.new
    car.make = 'Test'
    expect(car.make).to eq('Test')
  end
  it "allows reading and writing to :year" do
    car = Car.new
    car.year = 9999
    expect(car.year).to eq(9999)
  end
  it "allows reading and writing to :color" do
    car = Car.new
    car.color = 'Foo'
    expect(car.color).to eq('Foo')
  end
  it "allows reading :weels" do
    car = Car.new
    expect(car.wheels).to eq(4)
  end
end

describe '.colors' do
  it "returns an array of colors" do
    c = ['blue', 'black', 'red', 'green']    
    expect(Car.colors).to match_array(c)
  end
end

describe '#full_name' do
  it "returns a string of expected format" do
    @honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
    expect(@honda.full_name).to eq('2004 Honda (blue)')
  end
  context "when initialized with no arguments" do
    it "returns string using defaults arguments" do
      car = Car.new
      expect(car.full_name).to eq('2007 Volvo (unknown)')
    end
  end
end

