require "prawn"
require_relative "Tests"

class PdfGen

	def PdfGen.createPdf name
		pdf = Prawn::Document.new
		exam = []
		exam[0..1] = Tests.taskEasy
		exam[2..3] = Tests.taskEasy
		exam[4..5] = Tests.taskMedium
		exam[6..7] = Tests.taskMedium
		exam[8..9] = Tests.taskMedium
		exam[10..11] = Tests.taskSix
		exam[12..13] = Tests.taskSeven
		exam[14..15] = Tests.taskEight
		exam[16..17] = Tests.taskNine
		exam[18..19] = Tests.taskTen
		exam[20..21] = Tests.taskSix
		exam[22..23] = Tests.taskTwelve
		line =  "\n --------------" 
		pdf.text "1. " + exam[0] + line
		pdf.text "2. " + exam[2] + line
		pdf.text "3. " + exam[4] + line
		pdf.text "4. " + exam[6] + line
		pdf.text "5. " + exam[8] + line
		pdf.text "6. " + exam[10] + line
		pdf.text "7. " + exam[12] + line
		pdf.text "8. " + exam[14] + line
		pdf.text "9. " + exam[16] + line
		pdf.text "10. " + exam[18] + line
		pdf.text "11. " + exam[20] + line
		pdf.text "12. " + exam[22]

		pdf.render_file ("PdfTests/"+name)


		pdf = Prawn::Document.new

		pdf.text "Task 1: 0x" + exam[1]
		pdf.text "Task 2: 0x" + exam[3]
		pdf.text "Task 3: 0x" + exam[5].to_s 
		pdf.text "Task 4: 0x" + exam[7].to_s
		pdf.text "Task 5: 0x" + exam[9].to_s
		pdf.text "Task 6: 0x" + exam[11].to_s
		pdf.text "Task 7: 0x" + exam[13].to_s
		pdf.text "Task 8: 0x" + exam[15].to_s
		pdf.text "Task 9: " + exam[17].to_s
		pdf.text "Task 10: " + exam[19].to_s
		pdf.text "Task 11: 0x" + exam[21].to_s
		pdf.text "Task 12: 0x" + exam[23].to_s
		pdf.render_file ("PdfTests/"+name+"_answers")
	end
end