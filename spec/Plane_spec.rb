require 'Plane'

describe Plane do

let(:plane) { Plane.new }

		it 'should have a name' do
			expect(plane.name).to eq('Party Plane')
		end

		it 'has flying status when created' do
			expect(plane.flying).to be true
		end

		# it 'has a flying status when in the air' do
		# 	expect(plane.flying).to be true
		# end

# 		it 'can take off' do
# 		end

# 		it 'changes it\'s status of flying when in the air' do
# 		end

# context 'taking off and landing' do

# 		it 'should be able to take off' do
# 			expect(plane).to take_off
# 		end

# 		it 'should be able to land' do
# 			expect(plane).to land
# 		end

# end


# context 'Traffic control' do

# 		it 'a plane cannot land if the airport is full' do
# 		end

# end

# context 'weather conditions' do

# 		it 'a plane cannot take off if a storm is brewing' do
# 		end

# 		it 'should not be able to land if a storm is brewing' do
# 		end
# end

# context 'Grand finale test' do

# 		it 'all planes can land and all planes can take off' do
# 		end

# end

end
