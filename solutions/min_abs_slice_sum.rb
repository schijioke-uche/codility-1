class MinAbsSliceSum

  class << self
    def solution(a)
      # write your code in Ruby 1.9.3
      puts a[0 .. 101].inspect
      return -1 unless a.kind_of?(Array)
      return 0 if a.size >1 && a.uniq.size == 1

      a = a.sort
      i = 0
      j = a.size - 1
      m = 2 ** (0.size * 8 - 2) - 1 #ruby FIXNUM_MAX

      while (i <= j)
        tmp = (i == j) ? a[i] : a[i] + a[j]
        m = [m, tmp.abs].min

        if tmp <= 0
          i += 1
        else
          j -= 1
        end
      end

      m
    end
  end

end