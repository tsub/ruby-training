class Fixnum
	def fizzbuzz
		if self % 3 == 0 && self % 5 == 0
			return 'FizzBuzz'
		elsif self % 3 == 0
			return 'Fizz'
		elsif self % 5 == 0
			return 'Buzz'
		else
			return self
		end
	end
end

(1..100).map {|i| i.fizzbuzz}.each do |i|
	puts i
end