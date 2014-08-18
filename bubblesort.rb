p q = [5,3,6,1,3,2,8]

def bubbleSort(seq)
	length = seq.length-1
	(0..length).each do |i|
		length.downto(i) do |j|
			if seq[j] < seq[j-1]
				tmp = seq[j]
				seq[j] = seq[j-1]
				seq[j-1] = tmp
			end
		end
	end
	return seq
end

p bubbleSort(q)