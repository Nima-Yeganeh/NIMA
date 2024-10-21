# pip install PyMuPDF

import os
import fitz  # PyMuPDF

# Directory containing the PDF files
pdf_directory = r".\\"

# Function to convert PDF to PNG
def convert_pdf_to_png(pdf_path, output_dir):
    # Open the PDF file
    pdf_document = fitz.open(pdf_path)
    filename = os.path.splitext(os.path.basename(pdf_path))[0]
    
    # Iterate through each page of the PDF
    for page_number in range(len(pdf_document)):
        # Get the page
        page = pdf_document.load_page(page_number)
        # Render the page to a pixmap
        pix = page.get_pixmap(dpi=300)  # High DPI for high quality
        # Construct the output filename
        output_filename = os.path.join(output_dir, f"{page_number + 1}_image.png")
        # Save the pixmap as a PNG file
        pix.save(output_filename)
    
    pdf_document.close()
    print(f"Converted {pdf_path} to PNG images.")

# Iterate through all files in the specified directory
for filename in os.listdir(pdf_directory):
    if filename.lower().endswith('.pdf'):
        pdf_file_path = os.path.join(pdf_directory, filename)
        convert_pdf_to_png(pdf_file_path, pdf_directory)

