require 'Plane'

describe Plane do

let(:airport) { double :airport, weather: :sunny, land: :plane, take_off: :plane }
let(:plane) { Plane.new }

		it 'should have a name' do
			expect(plane.name).to eq('Party Plane')
		end

		it 'has flying status when created' do
			expect(plane.flying).to be true
		end

context 'taking off and landing' do

		it 'should be able to take off' do
			plane.take_off
			expect(plane.flying).to be true
		end

		it 'it changes it\'s flying status when in the air' do
			plane.in_air
			expect(plane.in_air && plane.flying).to be true
		end

		it 'should be able to land' do
			plane.grounded
			expect(plane.grounded).to be false
		end

		  it 'changes its status to flying after taking off' do
		  	airport.land(plane)
		  	airport.take_off(plane)
				expect(plane.flying).to be true
  end

end




end
