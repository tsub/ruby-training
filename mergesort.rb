# マージソート
# 要素数が最小になるまで要素を２分割していく
# 分割された要素を比較しながら連結していくと最終的にソートされた配列になる

q = [2,3,4,7,1,9,8,10,14,12,16,15,18]

class Array
  def merge(left, right)
    res = []
    until left.empty? && right.empty?
      res << case
        when left.empty? then right.shift
        when right.empty? then left.shift
        when left.first < right.first then left.shift
        else right.shift
        end
    end
    return res
  end

  def half
    return slice(0...length / 2), slice(length / 2..-1)
  end

  def merge_sort
    return self if length <= 1

    left, right = half.map { |i| i.merge_sort }
    merge(left, right)
  end
end

p q
p q.merge_sort