# バブルソート
# 隣り合う数値同士の大小を比較しながらすべての要素に対して入れ替えを行っていく

q = [5,3,6,1,3,2,8]

class Array
  def bubble_sort
    (0...length).each do |i|
      (length - 1).downto(i) do |j|
        self[j], self[j - 1] = self[j - 1], self[j] if self[j] < self[j - 1]
      end
    end
    return self
  end
end

p q
p q.bubble_sort