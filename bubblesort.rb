q = [5,3,6,1,3,2,8]

def bubbleSort(seq)
	(0..(seq.length-1)).each do |i|
		(seq.length-1).downto(i) do |j|
			if seq[j] < seq[j-1]
				seq[j], seq[j-1] = seq[j-1], seq[j]
			end
		end
	end
	return seq
end

p q
p bubbleSort(q)
