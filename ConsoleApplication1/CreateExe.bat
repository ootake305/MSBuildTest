title %date% %time% ROM����

@echo off
rem ����bat���J�����g�f�B���N�g���Ƃ���----------------------------------------
cd /d %~dp0

echo masterROM�𐶐����J�n���܂�
  
rem �t�H���_�̐���-------------------------------------------------------------
if exist ROM (
    echo ROM�t�H���_�͑��݂��Ă܂�
) else (
    echo ROM�t�H���_�𐶐����܂�
    md ROM
)

rem �r���h�ݒ�--------------------------------------------------------------------------
@Set Path=C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319;%PATH%


rem �f�o�b�N�r���h���s------------------------------------------------------------------
echo �f�o�b�N�r���h���s���܂�
msbuild ConsoleApplication1.sln /p:Configuration=Debug /t:Rebuild /p:Platform="x86"

echo Exe�f�[�^�𕡐�
copy /y Debug\ConsoleApplication1_Debug.exe ROM\ConsoleApplication1_Debug.exe


rem �����[�X�r���h���s------------------------------------------------------------------
echo �����[�X�r���h���s���܂�
msbuild ConsoleApplication1.sln /p:Configuration=Release /t:Rebuild /p:Platform="x86"

echo Exe�f�[�^�𕡐�
copy /y Release\ConsoleApplication1.exe ROM\ConsoleApplication1.exe



exit /B

