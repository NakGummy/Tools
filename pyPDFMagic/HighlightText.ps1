Write-Host 'pyPDFMagic - HighlightText'
Write-Host 'This is a script for highlighting text in your pdf'

$src = Read-Host '入力PDFファイルのパスを入力してください（右クリックまたはShift+右クリックからコピーできます） -> '
$dst = Read-Host '出力PDFファイルのパスを入力してください（入力パスと同じでも可） -> '
$word = Read-Host 'ハイライトするキーワードを（現況, 撤去, ▲ ) -> '

$repaired_pdf = "$($dst)_repaired.pdf"

Write-Host '中間ファイル作成中'
py -3.10 ./RepairPDF.py --src_path $src --dst_path $repaired_pdf

Write-Host 'ハイライト処理中'
py -3.10 ./HighlightText.py --src_path $repaired_pdf --dst_path $dst --word $word

Write-Host '終了しました'

Pause