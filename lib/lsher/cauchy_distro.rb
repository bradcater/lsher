class CauchyDistro

  PI = 3.1415926535897932384626433832 

  attr_reader :dimension
  attr_reader :median
  attr_reader :sigma

  def initialize(dim, median=0, sigma=1, seed=nil)
    @dimension, @median, @sigma, @seed = dim, median, sigma, seed
  end

  def sample
    ret = []
    dimension.times { ret << sample_one }
    ret
  end

  private

  def rng
    @rng ||= if @seed 
      Random.new(@seed)
    else
      Random.new
    end
  end

  def sample_one
    median - 0.5 + sigma * Math.tan(PI * rng.rand)
  end
end
