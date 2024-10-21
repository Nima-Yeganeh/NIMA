# pip install PyPDF2
# pip install pdfplumber

import os
import pdfplumber

def convert_pdf_to_text(pdf_path, output_dir):
    # Open the PDF file using pdfplumber
    with pdfplumber.open(pdf_path) as pdf:
        num_pages = len(pdf.pages)
        
        # Process each page
        for page_num in range(num_pages):
            page = pdf.pages[page_num]
            text = page.extract_text()

            if text:
                # Remove line breaks from the text to make it a single line
                single_line_text = ' '.join(text.splitlines())
                
                # Define the output text file name (e.g., 1_page.txt, 2_page.txt, ...)
                output_file = os.path.join(output_dir, f"{page_num + 1}_page.txt")
                
                # Write the single-line text content to the output file
                with open(output_file, 'w', encoding='utf-8') as text_file:
                    text_file.write(single_line_text)
            else:
                print(f"Warning: Page {page_num + 1} is empty in {pdf_path}")

def process_pdfs_in_directory(directory):
    # Check for PDF files in the specified directory
    for filename in os.listdir(directory):
        if filename.lower().endswith('.pdf'):
            pdf_path = os.path.join(directory, filename)
            print(f"Processing {pdf_path}...")

            # Convert PDF to text files in the same directory
            convert_pdf_to_text(pdf_path, directory)
            print(f"Finished processing {pdf_path}")

if __name__ == "__main__":
    # Specify the directory containing the PDFs
    pdf_directory = r".\\"

    # Process all PDF files in the specified directory
    process_pdfs_in_directory(pdf_directory)

