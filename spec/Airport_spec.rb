require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }
  let(:plane2) { Plane.new }
	let(:plane3) { Plane.new }
	let(:plane4) { Plane.new }

  context 'taking off and landing' do

    it 'a plane can land' do
    	airport.accept(plane)
    	expect(airport.hangar.count).to eq(1)
    	end

    it 'a plane can take off' do
    	airport.accept(plane)
    	airport.take_off(plane)
    	expect(airport.hangar.count).to eq(0)
    end

  end

context 'Traffic control' do

		it 'a plane cannot land if the airport is full' do
			airport.accept(plane)
			airport.accept(plane2)
			airport.accept(plane3)
			expect(airport.accept(plane4)).to eq "bugger off we're full"
		end

end

context 'weather conditions' do

		it 'a plane cannot take off if a storm is brewing' do

		end

		# it 'should not be able to land if a storm is brewing' do
		# end
end

# context 'Grand finale test' do

# 		it 'all planes can land and all planes can take off' do
# 		end

# end

end
