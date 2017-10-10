#Author GURPREET SINGH, All rights reserved!!!
def print_roots(a2,b2,c2)
	d=Math.sqrt(b2*b2-(4*a2*c2))
	root1= (-b2 + d)/(2.*a2)
	root2= (-b2 - d)/(2.*a2)
	puts "The roots are: \n #{root1}, #{root2}" #Explain what is #
end