class Numbers
	def Numbers.hexGen
			temp = ((0x0001) + Random.rand(0xFFFF)).to_s(16)
	end

	def Numbers.shiftGen
		temp = Random.rand(2..12)
	end

	def Numbers.decGen
		temp = Random.rand(100..444)
	end

	def Numbers.bitwiseGen
		for i in 1..3 do
			temp = Random.rand(1..3)
			if temp == 1
				puts "|"
			elsif temp === 2
				puts "^"
			else
				puts "&"
			end
		end
	end

end