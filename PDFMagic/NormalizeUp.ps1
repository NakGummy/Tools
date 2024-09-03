Write-Host 'PDFMagic - NormalizeUp'
Write-Host '※中級者向け※'
Write-Host 'cpdfを使用して入力pdfのページ毎の回転値(rotation)を焼きこみます'

$src = Read-Host '入力PDFファイルのパスを入力してください（右クリックまたはShift+右クリックからコピーできます） -> '
$dst = Read-Host '出力PDFファイルのパスを入力してください（入力パスと同じでも可） -> '

cpdf -upright $src -o $dst

Write-Host '終了しました'

Pause