Write-Host 'PDFMagic - PageInfo'
Write-Host '�������Ҍ�����'
Write-Host 'cpdf���g�p���ē���pdf�̃y�[�W���̃��^�f�[�^��\�����܂�'

$src = Read-Host '����PDF�t�@�C���̃p�X����͂��Ă��������i�E�N���b�N�܂���Shift+�E�N���b�N����R�s�[�ł��܂��j -> '
$range = Read-Host '�w��͈͂���͂��Ă��������i��: 1 or 2,4 or 5-7 or 8,10-11 �j -> '

cpdf -page-info $src $range

Write-Host '�I�����܂���'

Pause