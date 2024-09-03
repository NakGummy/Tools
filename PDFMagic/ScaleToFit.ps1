Write-Host 'PDFMagic - ScaleToFit'
Write-Host 'cpdfを使用して入力pdfのページ毎のサイズを指定サイズにフィットします'
Write-Host "`n"

$src = Read-Host '入力PDFファイルのパスを入力してください（右クリックまたはShift+右クリックからコピーできます） -> '
$size = Read-Host '出力pdfのサイズを (e.g. a4portrait, a4landscape, uslegalportrait, usletterlandscape) ->'
$dst = Read-Host '出力PDFファイルのパスを入力してください（入力パスと同じでも可） -> '

cpdf $src -scale-to-fit $size -o $dst

Write-Host '終了しました'

Pause