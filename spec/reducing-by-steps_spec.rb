require_relative '../reducing-by-steps'

describe 'reducing-by-steps' do
  context '#gcdi' do
    examples = {
      [150, 150] => 150,
      [5, 0] => 5,
      [48, 18] => 6,
      [18, 48] => 6,
      [24, 54] => 6,
      [42, 56] => 14,
      [-90, 18] => 18,
    }

    examples.each do |a_b, gcd|
      it "return #{gcd} for [#{a_b[0]}, #{a_b[1]}]" do
        expect(gcdi(a_b[0], a_b[1])).to eq(gcd)
      end
    end
  end

  context '#lcmu' do
    examples = {
      [21, 6] => 42,
      [9, 21] => 63,
      [4, 6] => 12,
    }
    examples.each do |a_b, lcm|
      it "return #{lcm} for [#{a_b[0]}, #{a_b[1]}]" do
        expect(lcmu(a_b[0], a_b[1])).to eq(lcm)
      end
    end
  end

  context '#oper_array' do
    a = [ 18, 69, -90, -78, 65, 40 ]
    it 'performs :gcdi call correctly' do
      expect(oper_array(method(:gcdi), a, 18)).to eq([ 18, 3, 3, 3, 1, 1 ])
    end
  end
end
