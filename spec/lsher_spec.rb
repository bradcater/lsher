require 'lsher'

describe Lsher::Lsh do
  it "should give equal hashes for equal vectors" do
    l = LSH.new(CauchyDistro.new(3).sample, 0.7)
    l.hash_for_vector([0, 1, 0]).should eql(l.hash_for_vector([0, 1, 0]))
  end

  it "should give unequal hashes for unequal vectors" do
    l = LSH.new(CauchyDistro.new(3).sample, 0.7)
    l.hash_for_vector([0, 1, 0]).should_not eql(l.hash_for_vector([0, 1, 1]))
  end
end
