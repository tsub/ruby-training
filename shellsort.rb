# シェルソート
# 配列を分割しながら単純挿入ソートを行っていく

q = [7,3,4,2,1,5,8]

class Array
	def shellSort
		(0..length).map { |gap| gap /= 2 }.each do |gap|
			(gap...length).each do |i|
				(i-gap).downto(0) do |j|
					break if self[j] <= self[j+gap]
					self[j], self[j+gap] = self[j+gap], self[j]
				end
			end
		end
		self
	end
end

p q
p q.shellSort