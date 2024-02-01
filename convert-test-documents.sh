# Convert the documents in the test-pdfs directory to .mmd using nougat
# Save the results in the nougat-ouputs directory
# Nougat syntax: $ nougat path/to/file.pdf -o output_directory
cd test-pdfs
for file in *.pdf
do
	echo "Converting $file"
	nougat $file --no-skipping -o ../base/nougat-outputs
done
cd ..
