# クイックソート
# 基準値を決め、それより小さい要素と大きい要素で配列を2分割
# 分割したそれぞれの配列で再び基準値を決め、配列を2分割していく
# 分割できなくなるまで分割した要素をすべて繋ぎあわせたものがソート後の配列

q = [6,1,3,7,4,2,3,9,10,14,16,12,13,11]

# 基準値の決め方
# 今回は配列の一番最後の要素を基準値とする
def pivot(seq)
	return seq[seq.length-1]
end

# クイックソートを行う部分
def quickSort(seq)
	if seq.empty?
		return seq
	end

	# p seq
	pivot = pivot(seq)

	# 配列を分割する
	left = []
	right = []
	(0...seq.length-1).each do |i|
		if seq[i] <= pivot
			left.push(seq[i])
		else
			right.push(seq[i])
		end
	end

	left = quickSort(left)
	right = quickSort(right)
	return left + [pivot] + right
end

p q
p quickSort(q)