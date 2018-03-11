# All rights reserved: GURPREET SINGH
class FamilyMember
	attr_accessor :name1, :sex, :status, :age, :children

	def initialize(name1,sex,status,age,children)
		@name = name1
		@sex = sex
		@status = status
		@age = age
		@children = children
	end

	def parent()
		if (@status=='Married' && @children=='Yes' && @sex=='M')
			then print("#{@name} is a Father, Sex: #{@sex}, Status: #{@status}, Age: #{@age}, Children: #{@children}")
		elsif (@status=='Married' && @children=='Yes' && @sex=='F')
			then print("#{@name} is a Mother, Sex: #{@sex}, Status: #{@status}, Age: #{@age}, Children: #{@children}")
		else child
		end
	end

	def child()
		if (@status=='Unmarried' && @children=='No' && @sex=='M')
			then print("#{@name} is a Son, Sex: #{@sex}, Status: #{@status}, Age: #{@age}, Children: #{@children}") 
		elsif(@status=='Unmarried' && @children=='No' && @sex=='F')
			then print("#{@name} is a Daughter , Sex: #{@sex}, Status: #{@status}, Age: #{@age}, Children: #{@children}")
		elsif(@status=='Not Valid')
			then print ("#{@name} is a Dog, Sex: #{@sex}, Status: #{@status}, Age: #{@age}, Children: #{@children}")
		end
	end
end

inst1=FamilyMember.new('Alpha','M','Unmarried',25,'No') 	#son
inst2=FamilyMember.new('Bravo','F','Married',25,'Yes')		#Mother
inst3=FamilyMember.new('Charlie','M','Not Valid',20,'No')	#Dog
inst4=FamilyMember.new('Delta','M','Married',25,'Yes')		#Father
inst5=FamilyMember.new('Echo','F','Unmarried',20,'No')		#Daughter
# print inst1, inst2, inst3, inst4, inst5

#print and puts work almost similar by returning only the address (puts returns in new line)
#whereas p returns the complete instance, i.e. address as well as value

inst_arr = [inst1, inst2, inst3, inst4, inst5]
inst_arr.each{|x| puts x.parent}





