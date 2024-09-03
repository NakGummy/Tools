import pikepdf

def repair_pdf(src_path, dst_path):
    try:
        with pikepdf.open(src_path) as pdf:
            pdf.save(dst_path)
        print(f"Repaired PDF saved to {dst_path}")
    except Exception as e:
        print(f"Error: Cannot repair the file {src_path}. {e}")

if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description='Repair a PDF file.')
    parser.add_argument('--src_path', type=str, help='Path to the input PDF file')
    parser.add_argument('--dst_path', type=str, help='Path to the output PDF file')

    args = parser.parse_args()
    repair_pdf(args.src_path, args.dst_path)