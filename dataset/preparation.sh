# Convert the documents in the docxs directory to PDFs and HTMLs
# Save the results in the prereqs/pdfs and prereqs/htmls directories, respectively
cd docxs
for file in *.docx
do
	echo "Converting $file"
	# Use pandoc to convert the docx to pdf
	# pandoc --mathjax -s $file -o ../prereqs/pdfs/${file%.docx}.pdf
	# Use pandoc to convert the docx to html
	# pandoc --mathjax -s $file -o ../prereqs/htmls/${file%.docx}.html

	# Use libreoffice to convert the docx to pdf
	libreoffice --headless --convert-to pdf $file
	mv ${file%.docx}.pdf ../prereqs/pdfs
	# Use libreoffice to convert the docx to html, currently places .gif, .jpg, .png in docxs directory
	libreoffice --headless --convert-to html $file
	mv ${file%.docx}.html ../prereqs/htmls
	# Use pdffigures2 on the pdf file
	java -jar ../pdffigures2.jar -d ../prereqs/figures/ ../prereqs/pdfs/${file%.docx}.pdf
done
cd ..
