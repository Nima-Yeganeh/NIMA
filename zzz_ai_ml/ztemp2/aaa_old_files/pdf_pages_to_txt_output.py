# pip install pdfplumber

import pdfplumber

def convert_pdf_to_text_per_page(pdf_path, output_dir):
    # Open the PDF file using pdfplumber
    with pdfplumber.open(pdf_path) as pdf:
        # Iterate over each page in the PDF
        for page_num, page in enumerate(pdf.pages, start=1):
            # Extract text from the current page
            text = page.extract_text() or ""
            
            # Create the output file path for the current page
            output_txt_path = f"{output_dir}\\{page_num}_pdf_output.txt"
            
            # Write the extracted text to the output text file
            with open(output_txt_path, "w", encoding="utf-8") as text_file:
                text_file.write(text)

# File paths
pdf_file_path = r"C:\Users\Nimay\Downloads\Amazon-EC2-Core-of-AWS-Cloud-Computing.pdf"
output_directory = r"C:\Users\Nimay\Downloads"

# Convert PDF to text, saving each page to a separate file
convert_pdf_to_text_per_page(pdf_file_path, output_directory)

print("PDF has been successfully converted to text files for each page.")

