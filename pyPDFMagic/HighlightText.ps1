Write-Host 'pyPDFMagic - HighlightText'
Write-Host 'This is a script for highlighting text in your pdf'

$src = Read-Host '����PDF�t�@�C���̃p�X����͂��Ă��������i�E�N���b�N�܂���Shift+�E�N���b�N����R�s�[�ł��܂��j -> '
$dst = Read-Host '�o��PDF�t�@�C���̃p�X����͂��Ă��������i���̓p�X�Ɠ����ł��j -> '
$word = Read-Host '�n�C���C�g����L�[���[�h���i����, �P��, �� ) -> '

$repaired_pdf = "$($dst)_repaired.pdf"

Write-Host '���ԃt�@�C���쐬��'
py -3.10 ./RepairPDF.py --src_path $src --dst_path $repaired_pdf

Write-Host '�n�C���C�g������'
py -3.10 ./HighlightText.py --src_path $repaired_pdf --dst_path $dst --word $word

Write-Host '�I�����܂���'

Pause