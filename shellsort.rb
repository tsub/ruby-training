# シェルソート
# 配列を分割しながら挿入ソートを行っていく

q = [7,3,4,2,1,5,8]

class Array
	def shell_sort
		gap = length / 2

		while gap > 0
			(gap...length).each do |i|
				(i - gap).downto(0) do |j|
					break if self[j] < self[j + gap]
					self[j], self[j + gap] = self[j + gap], self[j]
				end
			end
			gap /= 2
		end
		return self
	end
end

p q
p q.shell_sort