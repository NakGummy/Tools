Write-Host 'PDFMagic - NormalizeUp'
Write-Host '�������Ҍ�����'
Write-Host 'cpdf���g�p���ē���pdf�̃y�[�W���̉�]�l(rotation)���Ă����݂܂�'

$src = Read-Host '����PDF�t�@�C���̃p�X����͂��Ă��������i�E�N���b�N�܂���Shift+�E�N���b�N����R�s�[�ł��܂��j -> '
$dst = Read-Host '�o��PDF�t�@�C���̃p�X����͂��Ă��������i���̓p�X�Ɠ����ł��j -> '

cpdf -upright $src -o $dst

Write-Host '�I�����܂���'

Pause