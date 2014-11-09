class MinAbsSliceSum

  class << self
    # based on Kadane's Algorithm for max abs slice sum problem

    def solution(a)
      debug(a)
      return a[0].abs if a.size > 0 && a.uniq.size == 1

      if a.size != 2

        a.sort!

        cur_sum = 0
        min_sum = fix_num_max = 2 ** (0.size * 8 - 2) - 1 #ruby FIXNUM_MAX

        a.each do |i|
          cur_sum += i
          min_sum = [min_sum, cur_sum].min.abs

          min_sum = tmp_sum if tmp_sum > 0

          cur_sum = [cur_sum.abs, fix_num_max].min
        end
      else
        min_sum = a.inject{|sum, x| sum + x}.abs
      end

      [a[0].abs, a[-1].abs, min_sum].min
    end

    def debug(a)
      p "a.count: #{a.count} ["
      p a[0 .. 500].inspect
      p ']'
    end

  end

end