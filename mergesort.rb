# マージソート
# 要素数が最小になるまで要素を２分割していく
# 分割された要素を比較しながら連結していくと最終的にソートされた１つの配列になる

def merge(left, right, seq)
	p 'left', left, 'right', right

	i = 0; j = 0
	while i < left.length || j < right.length
		if j >= right.length || ( i < left.length && left[i] < right[j] )
			seq[i+j] = left[i]
			i += 1
		else
			seq[i+j] = right[j]
			j += 1
		end
	end

	p 'seq', seq
end

def mergeSort(seq)
	if seq.length > 1
		m = seq.length / 2
		n = seq.length - m

		left = Array.new
		right = Array.new

		(0...m).each do |i|
			left.push(seq[i])
		end

		(0...n).each do |i|
			right.push(seq[m+i])
		end

		mergeSort(left)
		mergeSort(right)
		merge(left, right, seq)
		return seq
	end
end

p q = [2,3,4,7,1,9,8,10,14,12,16,15,18]
p mergeSort(q)