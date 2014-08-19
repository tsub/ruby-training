# クイックソート
# 基準値を決め、それより小さい要素と大きい要素で配列を2分割
# 分割したそれぞれの配列で再び基準値を決め、配列を2分割していく
# 分割できなくなるまで分割した要素をすべて繋ぎあわせたものがソート後の配列

q = [6,1,3,7,4,2,3,9,10,14,16,12,13,11]

class Array
	def quick_sort
		return self if empty?

		pivot = pop
		left, right = partition { |i| i <= pivot }.map { |i| i.quick_sort }
		return left + [pivot] + right
	end
end

p q
p q.quick_sort