# クイックソート
# 基準値を決め、それより小さい要素と大きい要素で配列を2分割
# 分割したそれぞれの配列で再び基準値を決め、配列を2分割していく
# 分割できなくなるまで分割した要素をすべて繋ぎあわせたものがソート後の配列

q = [6,1,3,7,4,2,3,9,10,14,16,12,13,11]

class Array
	# 基準値の決め方
	# 今回は配列の一番最後の要素を基準値とする
	def pivot
		return self[self.length-1]
	end

	# 配列を分割する
	def partition(a, b)
		(0...self.length-1).each do |i|
			if self[i] <= pivot
				a.push(self[i])
			else
				b.push(self[i])
			end
		end
	end

	def quickSort
		if self.empty?
			return self
		end

		pivot = self.pivot

		left = []; right = []
		self.partition(left, right)

		left = left.quickSort
		right = right.quickSort
		return left + [pivot] + right
	end
end

p q
p q.quickSort