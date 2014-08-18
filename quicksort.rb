# クイックソート
# 基準値を決め、それより小さい要素と大きい要素で配列を2分割
# 分割したそれぞれの配列で再び基準値を決め、配列を2分割していく
# 分割できなくなるまで分割した要素をすべて繋ぎあわせたものがソート後の配列

q = [6,1,3,7,4,2,3,9,10,14,16,12,13,11]

class Array
	def quickSort
		return self if empty?

		# 今回は配列の一番最後の要素を基準値とする
		pivot = pop

		# 配列を分割する
		left = []; right = []
		left, right = partition { |i| i <= pivot }

		left.quickSort + [pivot] + right.quickSort
	end
end

p q
p q.quickSort