import io
import fitz

# PDFファイルパスの読み込み
pdf_path = input()

# 1ページ目の要素を取得
document = fitz.open(pdf_path)
page = document[0]