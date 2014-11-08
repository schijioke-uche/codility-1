class MinAbsSliceSum

  class << self
    # based on Kadane's Algorithm for max abs slice sum problem
    def solution(a)
      a = a.sort
      cur_sum = 0
      min_sum = fix_num_max = 2 ** (0.size * 8 - 2) - 1 #ruby FIXNUM_MAX
      for i in a
        cur_sum += i
        min_sum = [min_sum, cur_sum].min.abs
        cur_sum = [cur_sum.abs, fix_num_max].min
      end
      min_sum
    end
  end

end