# マージソート
# 要素数が最小になるまで要素を２分割していく
# 分割された要素を比較しながら連結していくと最終的にソートされた１つの配列になる

q = [2,3,4,7,1,9,8,10,14,12,16,15,18]

class Array
	def merge(left, right)
		i = 0; j = 0
		while i < left.length || j < right.length
			if j >= right.length || ( i < left.length && left[i] < right[j] )
				self[i+j] = left[i]
				i += 1
			else
				self[i+j] = right[j]
				j += 1
			end
		end

		# (1...self.length).each do |i|
		# until left.empty? && right.empty?
		# 	self <<
		# 	case
		# 	when left.empty?
		# 		right.shift
		# 	when right.empty?
		# 		left.shift
		# 	when left.first < right.first
		# 		left.shift
		# 	else
		# 		right.shift
		# 	end
		# end
	end

	def mergeSort
		if self.length > 1
			m = self.length / 2
			n = self.length - m

			left = []; right = []

			(0...n).each do |i|
				left.push(self[i])
			end

			(0...m).each do |i|
				right.push(self[m+i])
			end

			left.mergeSort
			right.mergeSort
			self.merge(left, right)
			return self
		end
	end
end

p q
p q.mergeSort