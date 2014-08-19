# シェルソート
# 配列を分割しながら挿入ソートを行っていく

q = [7,3,4,2,1,5,8]

class Array
	def shell_sort
		gap = length / 2
		while gap > 0
			print 'gap: ', gap; puts
			(gap...length).each do |i|
				print '	i: ', i, ', i-gap: ', i-gap; puts
				(i-gap).downto(0) do |j|
					print '		j: ', j, ', j+gap: ', j+gap, ', self[j]: ', self[j], ', self[j+gap]: ', self[j+gap]; puts
					break if self[j] < self[j+gap]
					self[j], self[j+gap] = self[j+gap], self[j]
				end
			end
			gap /= 2
			print 'self: ', self; puts
		end
		self
	end
end

p q
p q.shell_sort
