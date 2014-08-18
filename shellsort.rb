# シェルソート
# 配列を分割しながら単純挿入ソートを行っていく

q = [7,3,4,2,1,5,8]

class Array
	def shellSort
		gap = self.length / 2
		(0..self.length).each do
			(gap...self.length).each do |j|
				(j-gap).downto(0) do |k|
					if self[k] <= self[k+gap]
						break
					else
						self[k], self[k+gap] = self[k+gap], self[k]
					end
				end
			end

			gap /= 2
			if gap == 0
				break
			end
		end
		return self
	end
end

p q
p q.shellSort