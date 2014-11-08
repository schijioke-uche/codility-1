
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

  it 'test4' do
    a = [5, 8, 6, 10000, -9, -15, 20, -8, -5, 1000]
    result = MinAbsSliceSum.solution a
    expect(result).to eq 3
  end

  it 'small sequence with many -1, N = ~200' do
    a = Array.new 200, -1
    result = MinAbsSliceSum.solution a
    expect(result).to eq 0
  end

  it 'small sequence with many -1, N = ~500' do
    a = Array.new 500, -1
    result = MinAbsSliceSum.solution a
    expect(result).to eq 0
  end

  it 'extreme sequence with many 10000, N = ~100 000' do
    a = Array.new 100_000, 10000
    result = MinAbsSliceSum.solution a
    expect(result).to eq 10000
  end



end