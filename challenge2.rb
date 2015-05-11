puts "Exercise: Given a list of strings that symbolize the number of common"
puts "elements in rocks(each element represented by letter)" 
puts "print out the number of common elements to all rocks."
puts 

rock = ""
rocks_arr = []
while rock != "compare!" do  
	puts "type the elements sequence of a rock you want compare:"
	puts "when you are done with the rocks you want to compare type 'compare!'"
	puts ">"
	rock = gets.chomp 
	if rock != "compare!"
		rocks_arr << rock
	end
end

def num_of_common_elements(rocks)
	compare_arr = rocks[0].split(//)
	i = 1    
	  while i < rocks.length do 
	  	rock_arr = rocks[i].split(//)
	  	compare_arr = compare_arr & rock_arr
	  	i += 1
	  end
	puts compare_arr.length
end 

num_of_common_elements(rocks_arr)