Write-Host 'PDFMagic - ScaleToFit'
Write-Host 'cpdf���g�p���ē���pdf�̃y�[�W���̃T�C�Y���w��T�C�Y�Ƀt�B�b�g���܂�'
Write-Host "`n"

$src = Read-Host '����PDF�t�@�C���̃p�X����͂��Ă��������i�E�N���b�N�܂���Shift+�E�N���b�N����R�s�[�ł��܂��j -> '
$size = Read-Host '�o��pdf�̃T�C�Y�� (e.g. a4portrait, a4landscape, uslegalportrait, usletterlandscape) ->'
$dst = Read-Host '�o��PDF�t�@�C���̃p�X����͂��Ă��������i���̓p�X�Ɠ����ł��j -> '

cpdf $src -scale-to-fit $size -o $dst

Write-Host '�I�����܂���'

Pause