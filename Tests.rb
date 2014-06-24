require_relative "Numbers"

class Tests

	def Tests.taskEasy
		orig = Numbers.hexGen
		insert = Numbers.shexGen
		shift = Numbers.shiftGen
		temp = Numbers.rand
		
		if temp == 1
			answer = (orig.hex | (insert.hex << shift)).to_s(16)
			bitwise = "|"
		elsif temp == 2
			answer = (orig.hex ^ (insert.hex << shift)).to_s(16)
			bitwise = "^"
		else
			answer = (orig.hex & (insert.hex << shift)).to_s(16)
			bitwise = "&"
		end

		info = String.new
		info << "a = ? \n\n"
		info << "int orig = 0x#{orig}; \n"
		info << "int insert = 0x000#{insert}; \n"
		info << "int a = orig #{bitwise} (insert << #{shift}); \n"	

		return [info, answer]
	end

	def Tests.taskMedium
		orig = Numbers.hexGen
		insert = Numbers.shexGen
		shift1 = Numbers.shiftGen
		shift2 = Numbers.shiftGen
		temp = Numbers.rand
		temp2 = Numbers.rand
		
		if temp == 1
			a = (orig.hex | (insert.hex << shift1)).to_s(16)
			bitwise = "|"
		elsif temp == 2
			a = (orig.hex ^ (insert.hex << shift1)).to_s(16)
			bitwise = "^"
		else
			a = (orig.hex & (insert.hex << shift1)).to_s(16)
			bitwise = "&"
		end

		b = (orig.hex | (insert.hex << shift2)).to_s(16)
		
		if temp2 == 1
			answer = (a.hex & b.hex).to_s(16)
			bitwise2 = "&"
		elsif temp2 == 2
			answer = (a.hex ^ b.hex).to_s(16)
			bitwise2 = "^" 
		else
			answer = (a.hex | b.hex).to_s(16)
			bitwise2 = "|"
		end

		info = String.new
		info << "res = ? \n\n"
		info << "int orig = 0x#{orig} \n"
		info << "int insert = 0x000#{insert} \n"
		info << "int a = orig #{bitwise} (insert << #{shift1}) \n"
	   	info << "int b = orig | (insert << #{shift2}) \n"
	   	info << "int res = a #{bitwise2} b \n"

		return [info, answer]
	end

	def Tests.taskSix
			i = Numbers.hexGen
			shift = Numbers.shiftGen
			temp = Numbers.rand
			
			if temp == 1
				answers = (i.hex | (1 << shift)).to_s(16)
				bitwise = "|"
			elsif temp == 2
				answers = (i.hex ^ (1 << shift)).to_s(16)
				bitwise = "^"
			else
				answers = (i.hex & (1 << shift)).to_s(16)
				bitwise = "&"
			end
			

			info = String.new
			info << "left = ? \n\n"
			info << "int i = 0x#{i}; \n"
			info << "int left = #{i} #{bitwise} (1 << #{shift}); \n" 
			return [info, answers]
	end
	
	def Tests.taskSeven
		value1 = Numbers.hexGen + Numbers.hexGen
		value2 = Numbers.hexGen + Numbers.hexGen
		shift1 = Numbers.shiftGen
		shift2 = Numbers.shiftGen
		temp = Numbers.rand

		if temp == 1
			answers = ((value1.to_i(16) << shift1) | (value2.hex >> shift2)).to_s(16)
			bitwise = "|"
		elsif temp == 2
			answers = ((value1.to_i(16) << shift1) ^ (value2.hex >> shift2)).to_s(16)
			bitwise = "^"
		else
			answers = ((value1.to_i(16) << shift1) & (value2.hex >> shift2)).to_s(16)
			bitwise = "&"
		end

		info = String.new
		info << "result = ? \n\n"
		info << "long value1 = 0x#{value1}; \n"
		info << "long value2 = 0x#{value2}; \n"
		info << "int result = (value1 << #{shift1}) #{bitwise} (value2 >> #{shift2}); \n"

		return[info, answers]
	end
	
	def Tests.taskEight
		value1 = Numbers.decGen
		value2 = Numbers.decGen
		shift1 = Numbers.smallshiftGen
		shift2 = Numbers.smallshiftGen
		temp = Numbers.rand
		
		if temp == 1
			answers = ((value1 << shift1) | (value2 >> shift2)).to_s(16)
			bitwise = "|"
		elsif temp == 2
			answers = ((value1 << shift1) ^ (value2 >> shift2)).to_s(16)
			bitwise = "^"
		else
			answers = ((value1 << shift1) & (value2 >> shift2)).to_s(16)
			bitwise = "&"
		end

			info = String.new
			info << "result = ? \n\n"
			info << "int value1 = #{value1}; \n" 
			info << "int value2 = #{value2}; \n"
			info << "int result = (value1 << #{shift1}) #{bitwise} (value2 >> #{shift2});\n"
			return [info, answers]
	end

	def Tests.taskNine
		testValue = Numbers.hexGen + Numbers.hexGen
		shift = Numbers.shiftGen
		
		if(testValue.hex & (1 << shift))
			answers = 1
		else
			answers = 2
		end

		info = String.new
		info << "a = ?\n\n"
		info << "long testValue = 0x#{testValue}; \n"
		info << "int a = 0; \n"
		info << "if (testValue & (1 << #{shift}))
{
a = 1;
}
else
{
a = 2;
} \n"
		return [info, answers]
	end

	def Tests.taskTen
		testValue = Numbers.hexGen + Numbers.hexGen
		shift = Numbers.shiftGen
		
		if( (result = testValue.hex & testValue.hex ^ testValue.hex | (0x1 << shift)) )
			answers = 1
		else
			answers = 2
		end

		info = String.new
		info << "a = ?, result = ? \n"
		info << "long testValue = 0x#{testValue};\n"
		info << "a = 0; \n"
		info << "result = 0;\n\n"
		info << "if ((result = testValue & testValue ^ testValue | (1 << #{shift}))
{
a = 1;
}
else
{
a = 2;
}  \n"
		return[info, answers]
	end

	def Tests.taskTwelve
		value1 = Numbers.decGen
		value2 = Numbers.decGen
		shift1 = Numbers.smallshiftGen
		shift2 = Numbers.smallshiftGen		
		answers = ((value1 << shift1) ^ (value2 >> shift2)).to_s(16)

		info = String.new
		info << "result = ? \n"
		info << "int value1 = #{value1}; \n"
		info << "int value2 = #{value2}; \n\n"
		info << "int result = ((value1 << #{shift1}) ^ (value2 >> #{shift2})); \n" 
		return [info, answers]	
	end
end
