Write-Host 'PDFMagic - TopBlank'
Write-Host 'cpdf���g�p���ē���pdf��1�y�[�W�ڂɎw��T�C�Y�̔����y�[�W��ǉ����܂�'
Write-Host "`n"


$src = Read-Host '����PDF�t�@�C���̃p�X����͂��Ă��������i�E�N���b�N�܂���Shift+�E�N���b�N����R�s�[�ł��܂��j -> '
$size = Read-Host '�o��pdf�̃T�C�Y�� (e.g. a4portrait, a4landscape, uslegalportrait, usletterlandscape) ->'
$dst = Read-Host '�o��PDF�t�@�C���̃p�X����͂��Ă��������i���̓p�X�Ɠ����ł��j -> '

# �ꎞ�I�Ɏw��T�C�Y�ŋ��pdf�t�@�C�����쐬
cpdf -create-pdf -create-pdf-papersize $size -o ./blank.temp
$blank = './blank.temp'

# ����
cpdf -merge $blank $src -o $dst

# ���pdf�t�@�C�����폜
Remove-Item $blank

Write-Host '�I�����܂���'

Pause