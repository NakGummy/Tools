Write-Host 'PDFMagic - ExtractPages'
Write-Host 'cpdfを使用して入力pdfから指定ページを抜き出します'

$src = Read-Host '入力PDFファイルのパスを入力してください（右クリックまたはShift+右クリックからコピーできます） -> '
$dst = Read-Host '出力PDFファイルのパスを入力してください（入力パスと同じでも可） -> '
$range = Read-Host '指定範囲を入力してください（例: 1 or 2,4 or 5-7 or 8,10-11 ） -> '

cpdf $src $range -o $dst

Write-Host '終了しました'

Pause