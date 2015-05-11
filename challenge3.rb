require 'prime'

puts "#Excercise: Find if a sequence of numbers are relative primes."
puts "You are given a sequence of numbers, to find if they are relative primes find if the sequence has subsets" 
puts "that are not empty and in which all items are relatively prime(not commonly divisble by a single factor)."
puts "If the sequence does have one or more such subsets it is not relatively prime so print 'NO' otherwise print 'YES'"
puts 

number = ""
number_arr = []
while number != "finished" do
	puts  
	puts "what number do you want to add to the sequence?" 
	puts "if you are finished with the sequence type 'finished'"
	puts ">"
	number = gets.chomp 
	if number != "finished"
		number_arr << number.to_i
	end
	puts
end


def relative_primes?(number_arr)
	i = 2
	value = 'YES'
		combo_arr = []
		while i <= number_arr.length do 
			combo_arr = combo_arr + number_arr.combination(i).to_a
			i += 1
		end

		combo_arr.each do |sub_arr|
			if set_prime?(sub_arr) == 'NO'
				value = 'NO'
				break
			end
		end
puts value
end

def set_prime?(arr)
counter = 0
i = 2
value = 'YES'
	while i < arr.max do 
		arr.each do |x|
			if x >= i && x % i == 0 
				counter += 1
			end
			if counter == 2
				value = 'NO'
				break
			end
		end
	if value == 'NO'
		break
	end
	counter = 0
	i += 1	
	end
value
end

relative_primes?(number_arr)
