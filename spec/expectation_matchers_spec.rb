describe 'Expectation matchers' do
  
  describe 'equivalence matchers' do
    it 'will match loose equality with #eq' do
    a = "2 cats"
    b = "2 cats"
    expect(a).to eq(b)
    expect(a).to be == b #synonym for #eq
    
    c = 17
    d = 17.0
    expect(c).to eq(d) #different types but close enough
  end

    it 'will match loose equality with #eql' do
      a = "2 cats"
      b = "2 cats"
    expect(a).to eql(b) #just a little strictier
      c = 17
      d = 17.0
    expect(c).not_to eql(d) #not the same, close does't count
  end

    it 'will match loose equality with #equal' do
      a = "2 cats"
      b = "2 cats"
    expect(a).not_to equal(b) #same value, but different object
      c = b
    expect(b).to equal(c) #same object
    expect(b).to be(c) #synonym to #equal
  end
end

  describe 'truthiness matchers' do
    it 'will match true/false' do
      expect(1 < 2).to be(true)
      expect(1 > 2).to be(false)

      expect('foo').not_to be(true) #the string not exactly true
      expect(nil).not_to be(false) #nil is not exactly false
      expect(0).not_to be(false) #0 is not exactly false
    end
    it 'will match truthy/falsey' do
      expect(1 < 2).to be_truthy
      expect(1 > 2).to be_falsey

      expect('foo').to be_truthy #the string not exactly true
      expect(nil).to be_falsey #nil counts as false
      expect(0).not_to be_falsey #but 0 still not falsey enough
    end
    it 'will match nil' do
      expect(nil).to be_nil
      expect(nil).to be(nil)
      expect(false).not_to be_nil #nil only, just to be like #nil?
      expect(0).not_to be_nil #nil only, just to be like #nil?
    end
  end
  describe 'numeric comparison matchers' do
    it 'less than/greater than' do
      expect(10).to be > 9
      expect(10).to be <= 10
      expect(10).to be >= 10
      expect(9).to be < 10
    end
    it 'will match numeric ranges' do
      expect(10).to be_between(5,10).inclusive
      expect(10).not_to be_between(5,10).exclusive
      expect(10).to be_within(1).of(11)
      expect(5..10).to cover(9)
    end
  end
end
