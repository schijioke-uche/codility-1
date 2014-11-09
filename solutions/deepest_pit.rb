class DeepestPit
  class << self

    def solution(a)
      return -1 if a.size < 3

      depth = 0
      q = r = -1
      p = 0

      (1 ... a.size).each do |i|

        q = i - 1 if q < 0 && a[i] >= a[i - 1]

        if (q >= 0 && r < 0) && (a[i] <= a[i-1] || (i + 1) == a.size)
          r = i - 1
          depth = (a.size == 3 && (a[r] - a[q]) == 0) ? (a[p] - a[q]).abs : [depth, [a[p] - a[q], a[r] - a[q]].min].max
          p = i - 1
          q = r = -1
        end
      end
      depth = -1 if depth == 0

      depth
    end
  end
end