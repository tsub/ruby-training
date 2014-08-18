q = [7,3,4,2,1,5,8]

def shellSort(seq, gap)
	(0..seq.length).each do
		(gap...seq.length).each do |j|
			(j-gap).downto(0) do |k|
				if seq[k] <= seq[k+gap]
					break
				else
					seq[k], seq[k+gap] = seq[k+gap], seq[k]
				end
			end
		end

		gap /= 2
		if gap == 0
			break
		end
	end
	return seq
end

p q
p shellSort(q, q.length/2)