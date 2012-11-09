class LSH
  def initialize(stabily_distributed_vector, window)
    @window = window
    @stabily_distributed_vector = stabily_distributed_vector
  end

  def rng
    @rng ||= Random.new(0)
  end

  def offset
    @offset ||= (rng.rand * @window)
  end

  def hash_for_vector(vector)
    zip = @stabily_distributed_vector.zip(vector)
    begin
      dot_product = zip.map { |a| a.first * a.last }.inject(:+)
    rescue => e
      zip.each do |a|
        puts a if a.first.nil? || a.last.nil?
      end
    end
    ((offset + dot_product) / @window).floor
  end
end
