Write-Host 'PDFMagic - PageInfo'
Write-Host '※中級者向け※'
Write-Host 'cpdfを使用して入力pdfのページ毎のメタデータを表示します'

$src = Read-Host '入力PDFファイルのパスを入力してください（右クリックまたはShift+右クリックからコピーできます） -> '
$range = Read-Host '指定範囲を入力してください（例: 1 or 2,4 or 5-7 or 8,10-11 ） -> '

cpdf -page-info $src $range

Write-Host '終了しました'

Pause