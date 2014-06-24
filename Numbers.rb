class Numbers
	def Numbers.hexGen
			while true do
				temp = ((0x0001) + Random.rand(0xFFFF)).to_s(16)
				return temp if temp.length == 4
			end
	end

	def Numbers.shiftGen
		temp = Random.rand(2..12)
	end

	def Numbers.decGen
		temp = Random.rand(60..600)
	end

	def Numbers.shexGen
		temp = Random.rand(0x000A..0x000F).to_s(16)
	end

	def Numbers.rand
		temp = Random.rand(1..3)
	end

	def Numbers.smallshiftGen
		temp = Random.rand(2..8)
	end
end