q = [5,3,6,1,3,2,8]
length = q.length - 1

print q

for i in 0...length
	length.downto(i) do |j|
		if q[j] < q[j-1]
			tmp = q[j]
			q[j] = q[j-1]
			q[j-1] = tmp
		end
	end
end

print q