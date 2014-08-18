class Fixnum
	def fizzbuzz
		return 'FizzBuzz' if self % 15 == 0
		return 'Fizz' if self % 3 == 0
		return 'Buzz' if self % 5 == 0
		self
	end
end

(1..100).map {|i| i.fizzbuzz}.each do |i|
	puts i
end