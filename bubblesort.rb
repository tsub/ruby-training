# バブルソート
# 隣り合う数値同士の大小を比較しながらすべての要素に対して入れ替えを行っていく

q = [5,3,6,1,3,2,8]

class Array
	def bubbleSort
		(0...self.length).each do |i|
			(self.length-1).downto(i) do |j|
				if self[j] < self[j-1]
					self[j], self[j-1] = self[j-1], self[j]
				end
			end
		end
		return self
	end
end

p q
p q.bubbleSort
