q = [7,3,4,2,1,5,8]
gap = q.length / 2

print q
puts

(0..q.length).each do
	puts gap
	(gap...q.length).each do |j|
		(j-gap).downto(0) do |k|
			if q[k] <= q[k+gap]
				break
			else
				tmp = q[k]
				q[k] = q[k+gap]
				q[k+gap] = tmp
				print q
			end
		end
	end
	puts

	gap /= 2
	if gap == 0
		break
	end
end