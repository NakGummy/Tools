Write-Host 'PDFMagic - TopBlank'
Write-Host 'cpdfを使用して入力pdfの1ページ目に指定サイズの白紙ページを追加します'
Write-Host "`n"


$src = Read-Host '入力PDFファイルのパスを入力してください（右クリックまたはShift+右クリックからコピーできます） -> '
$size = Read-Host '出力pdfのサイズを (e.g. a4portrait, a4landscape, uslegalportrait, usletterlandscape) ->'
$dst = Read-Host '出力PDFファイルのパスを入力してください（入力パスと同じでも可） -> '

# 一時的に指定サイズで空のpdfファイルを作成
cpdf -create-pdf -create-pdf-papersize $size -o ./blank.temp
$blank = './blank.temp'

# 結合
cpdf -merge $blank $src -o $dst

# 空のpdfファイルを削除
Remove-Item $blank

Write-Host '終了しました'

Pause