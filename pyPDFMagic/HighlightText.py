import fitz  # PyMuPDF
import argparse

def highlight_text(src_path, dst_path, word):
    try:
        doc = fitz.open(src_path)
    except fitz.fitz.FileDataError:
        print(f"Error: Cannot open the file {src_path}. It may be corrupted.")
        return

    numpages = doc.page_count

    for page in range(numpages):
        page_obj = doc[page]

        rects = page_obj.search_for(word)
        for rect in rects:
            page_obj.add_highlight_annot(rect)

    try:
        doc.save(dst_path)
    except Exception as e:
        print(f"Error: Cannot save the file {dst_path}. {e}")
    finally:
        doc.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Highlight text in a PDF.')
    parser.add_argument('--src_path', type=str, help='Path to the input PDF file')
    parser.add_argument('--dst_path', type=str, help='Path to the output PDF file')
    parser.add_argument('--word', type=str, help='Word to highlight in the PDF')

    args = parser.parse_args()
    highlight_text(args.src_path, args.dst_path, args.word)