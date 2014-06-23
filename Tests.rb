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
end