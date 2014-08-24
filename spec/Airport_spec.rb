require 'airport'
# allow is 'assuming, probably etc, expect is 'this will happen and if it doesnt the test will fail'


describe Airport do

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  context 'taking off and landing' do

    it 'a plane can land' do
    	expect(airport).to receive(:weather) { :sunny }
    	airport.land(plane)
    	expect(airport.hangar.count).to eq(1)
    	end

    it 'a plane can take off' do
    	allow(airport).to receive(:weather) { :sunny }
    	airport.land(plane)
    	airport.take_off(plane)
    	expect(airport.hangar.count).to eq(0)
    end

  end

context 'Traffic control' do

		it 'a plane cannot land if the airport is full' do
			allow(airport).to receive(:weather) { :sunny }
			(airport.capacity).times { airport.land(Plane.new) }
      expect(airport.land(Plane.new)).to eq "bugger off we're full"
		end

end

# Expect is what youre expecting, allow is it doesnt matter either way, the test will fail if you dont meet the expectation

context 'weather conditions' do

		it 'a plane cannot take off if a storm is brewing' do
			airport.land(plane)
			expect(airport).to receive(:weather) { :stormy }
			expect(airport.take_off(plane)).to eq "THOU SHALT NOT PASS"
		end

		it 'should not be able to land if a storm is brewing' do
			expect(airport).to receive(:weather) { :stormy }
			expect(airport.land(plane)).to eq "You're in the DANGER ZONE!!!"
		end

end

context 'Grand finale test' do

		it 'planes can land and planes can take off' do

		end

end

end
