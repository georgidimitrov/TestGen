require_relative "PDFGen"
require 'fileutils'

class Main

	def start
		a = ARGV[0]
		createDirectories
		puts "Creating PDF files into PDFTests/..."
		a.to_i.times do |i|
			PdfGen.createPdf("test" + (i+1).to_s+".pdf")
		end

		puts"Finished!"
	end


	def directoryExists? directory 
  		File.directory? directory
	end

	def createDirectories
		pdfDir = "PdfTests"
		FileUtils.mkdir_p "PdfTests" if !(directoryExists? pdfDir)
	end
end

main = Main.new
if ARGV.length == 0 || ARGV[0].to_i <= 0
	puts "Error: no argument input"
else
	main.start
end