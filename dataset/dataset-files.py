# Python script used to generate the prerequisite files needed
# to create a dataset for training Nougat.

# The script takes a .docx file as input and outputs its html and pdf
# versions in their respective directories.

# Files to convert location: /docxs
# PDF output location: /pdfs
# HTML output location: /htmls

import tqdm
import os

# Go through and convert the docx files to pdf and html
# Save the pdfs and htmls in their respective directories
for file in tqdm.tqdm(os.listdir('docxs')):
	if file.endswith('.docx'):
		os.system('soffice --headless --convert-to pdf docxs/' + file + ' --outdir prereqs/pdfs')
		os.system('soffice --headless --convert-to html docxs/' + file + ' --outdir prereqs/htmls')
		# Remove gif files from htmls
		os.system('rm prereqs/htmls/*.gif')

