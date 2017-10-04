def get_name
	puts "what is your name?:"
	name= gets
	print_thanks
	if check_name_ok?(name)
		then print_new_name(name)
	end
end

def print_thanks
	puts "Thanks for that."
end

def check_name_ok?(nameo)
	if nameo.length > 10
	then error("way too long a name")
	else true 
	end
end

def print_new_name(namer)
	newname = namer + "babygi"
	puts "Your new name is:"
	puts newname
end

def error(sp_msg)
	puts "\n**ERROR**:#{sp_msg}.\n"
end

get_name