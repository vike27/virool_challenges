puts "Excersise: Given a number find if a permutation of it is divisible by 8, if so print YES" 
puts

num = ""
while num != "end" do  

	puts
	puts "give me a number to test, if you are done with numbers type 'end'"
	puts ">"
	num = gets.chomp 

	if num != "end"

		def permutation_div_by_8?(number)
		    i = 0
		    value = "NO"
		    permutation_arr = number.to_s.chars.to_a.permutation.map(&:join).map(&:to_i).uniq
		        while i < permutation_arr.length do
		        if permutation_arr[i] % 8 == 0
		            value = 'YES'
		        end
		        i += 1
		    end
		  puts value
		end
		
		permutation_div_by_8?(num)
	end


end

