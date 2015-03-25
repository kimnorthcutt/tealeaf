puts "Lets calculate some numbers"
begin
	puts "Please enter your first number."
	a = gets.chomp
	puts "Please enter your second number."
	b = gets.chomp
	puts "Here are your instructions...."
	puts "Enter + if you want to add the numbers."
	puts "Enter - if you want to subtract the numbers."
	puts "Enter * if you want to multiply the numbers."
	puts "Enter / if you want to divide the numbers."
	operation = gets.chomp

	if operation == "+" 
		puts a.to_i + b.to_i
	end

	if operation == "-" 
		puts a.to_i - b.to_i 
	end
	if operation == "*" 
		puts a.to_i * b.to_i 
	end
	if operation == "/" 
		puts a.to_f / b.to_f
	end

	puts "Would you like to calculate more numbers?"
	puts "Enter y for Yes and n for No"
	request = gets.chomp
	if request == "y"
		puts "Here we go again!"
	 else
		puts "Good bye."
	end
end until request == "n"