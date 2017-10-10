#Author GURPREET SINGH, All rights reserved!!!
require_relative 'p3_q1_b'
require_relative 'p3_q1_c'


def take_input
	puts "calculate the roots of Quadratic equation ax^2+bx+c=0 \n"
	puts "Please enter the value for a,b,c:"
	a=gets
	b=gets
	c=gets
	if check_complex_roots(a.to_f,b.to_f,c.to_f)
		then print_roots(a.to_f,b.to_f,c.to_f)
	end
end

take_input

# def check_complex_roots(a1,b1,c1)
# 	if ((b1*b1-(4.*a1*c1))<0)
# 		puts "Discriminant is negative! No roots!!!"
# 	else true
# 	end
# end

# def print_roots(a2,b2,c2)
# 	d=Math.sqrt(b2*b2-(4*a2*c2))
# 	root1= (-b2 + d)/(2.*a2)
# 	root2= (-b2 - d)/(2.*a2)
# 	puts "The roots are: \n #{root1}, #{root2}"
# end





