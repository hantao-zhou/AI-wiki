To convert DOC and DOCX files to TXT files on macOS, you can use Python with the `python-docx` library for DOCX files and the `unoconv` command-line tool for DOC files (LibreOffice-based conversion). Here's how you can do it:

1. Install `python-docx` library (if not already installed):

```bash
pip install python-docx
```

2. Install `unoconv` (if not already installed):

```bash
brew install unoconv
```

3. Create a Python script for the conversion:

```python
import os
import subprocess
from docx import Document

def docx_to_txt(docx_path, txt_path):
    doc = Document(docx_path)
    text = ""
    for paragraph in doc.paragraphs:
        text += paragraph.text + "\n"

    with open(txt_path, "w", encoding="utf-8") as txt_file:
        txt_file.write(text)

def doc_to_txt(doc_path, txt_path):
    subprocess.run(["unoconv", "-f", "txt", "-o", ".", doc_path])
    txt_file_name = os.path.splitext(os.path.basename(doc_path))[0] + ".txt"
    os.rename(txt_file_name, txt_path)

def convert_docx_or_doc_to_txt(input_file, output_file):
    _, file_extension = os.path.splitext(input_file)

    if file_extension.lower() == ".docx":
        docx_to_txt(input_file, output_file)
    elif file_extension.lower() == ".doc":
        doc_to_txt(input_file, output_file)
    else:
        print(f"Unsupported file format: {file_extension}")

if __name__ == "__main__":
    input_file = "input.docx"  # Replace with the path to your input DOC or DOCX file
    output_file = "output.txt"  # Replace with the desired output TXT file path

    convert_docx_or_doc_to_txt(input_file, output_file)
    print(f"Conversion complete. Text saved to {output_file}")
```

Make sure to replace `"input.docx"` and `"output.txt"` with the paths to your input DOC or DOCX file and the desired output TXT file.

This script checks the file extension and then uses the appropriate method for conversion. For DOC files, it utilizes `unoconv`, which relies on LibreOffice for conversion, so make sure you have LibreOffice installed on your macOS.