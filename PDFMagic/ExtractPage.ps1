Write-Host 'PDFMagic - ExtractPages'
Write-Host 'cpdf���g�p���ē���pdf����w��y�[�W�𔲂��o���܂�'

$src = Read-Host '����PDF�t�@�C���̃p�X����͂��Ă��������i�E�N���b�N�܂���Shift+�E�N���b�N����R�s�[�ł��܂��j -> '
$dst = Read-Host '�o��PDF�t�@�C���̃p�X����͂��Ă��������i���̓p�X�Ɠ����ł��j -> '
$range = Read-Host '�w��͈͂���͂��Ă��������i��: 1 or 2,4 or 5-7 or 8,10-11 �j -> '

cpdf $src $range -o $dst

Write-Host '�I�����܂���'

Pause