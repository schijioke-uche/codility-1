
describe MinAbsSliceSum do

  it 'main test' do
    a = [2, -4, 6, -3, 9]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 1
  end

  it 'test2' do
    a = [-10000]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 10000
  end

  it 'sequence with two 10000' do
    a = [10000, 10000]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 10000
  end

  it 'sequence with [10000, -10000]' do
    a = [10000, -10000]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 0
  end

  it 'simple test for [-1, -2, -3]' do
    a = [-1, -2, -3]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 1
  end

  it 'simple test for [-1, -2]' do
    a = [-1, -2]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 1
  end

  it 'simple test 2' do
    a = [5, 8, 6, 10000, -9, -15, 20, -8, -5, 1000]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 3
  end

  xit 'small plus-minus, N = ~50' do
    a = [7094, -8064, 5684, -5603, 4542, -9972, 3604, -2334, 3349, -3344, 3946, -3411, 1968, -3929, 3799, -6123, 2814, -1637, 2823, -5882, 4497, -7601, 8228, -4730, 1894, -7552, 7801, -4564, 6925, -3691, 9234, -8505, 8128, -9586, 3095, -5907, 7583, -8214, 4512, -2247, 6637, -1941, 7348, -1062, 5090, -5318, 2078, -5322, 5501, -4322]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 5
  end

  it 'small sequence with many -1, N = ~200' do
    a = [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 201, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 1
  end

  it 'small sequence with many -1, N = ~500' do
    a = Array.new 500, -1
    result = MinAbsSliceSum.solution a
    expect(result).to eq 1
  end

  it 'extreme sequence with many 10000, N = ~100 000' do
    a = Array.new 100_000, 10000
    result = MinAbsSliceSum.solution a
    expect(result).to eq 10000
  end



end