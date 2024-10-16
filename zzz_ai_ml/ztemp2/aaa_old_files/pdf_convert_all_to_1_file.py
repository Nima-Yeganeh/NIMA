# pip install PyPDF2
import PyPDF2

def convert_pdf_to_text(pdf_path, output_txt_path):
    # Open the PDF file in binary mode
    with open(pdf_path, "rb") as pdf_file:
        # Create a PDF reader object
        pdf_reader = PyPDF2.PdfReader(pdf_file)
        
        # Initialize a variable to hold all the text
        text = ""
        
        # Iterate over each page in the PDF
        for page_num in range(len(pdf_reader.pages)):
            # Extract text from the page
            page = pdf_reader.pages[page_num]
            text += page.extract_text() if page.extract_text() else ""

    # Write the extracted text to the output text file
    with open(output_txt_path, "w", encoding="utf-8") as text_file:
        text_file.write(text)

# File paths
pdf_file_path = r"C:\Users\Nimay\Downloads\Amazon-EC2-Core-of-AWS-Cloud-Computing.pdf"
output_text_file_path = r"C:\Users\Nimay\Downloads\pdf_output.txt"

# Convert PDF to text
convert_pdf_to_text(pdf_file_path, output_text_file_path)

print("PDF has been successfully converted to text and saved to pdf_output.txt.")
