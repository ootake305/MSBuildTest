title %date% %time% ROM生成

@echo off
rem このbatをカレントディレクトリとする----------------------------------------
cd /d %~dp0

echo masterROMを生成を開始します
  
rem フォルダの生成-------------------------------------------------------------
if exist ROM (
    echo ROMフォルダは存在してます
) else (
    echo ROMフォルダを生成します
    md ROM
)

rem ビルド設定--------------------------------------------------------------------------
@Set Path=C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319;%PATH%


rem デバックビルド実行------------------------------------------------------------------
echo デバックビルド実行します
msbuild ConsoleApplication1.sln /p:Configuration=Debug /t:Rebuild /p:Platform="x86"

echo Exeデータを複製
copy /y Debug\ConsoleApplication1_Debug.exe ROM\ConsoleApplication1_Debug.exe


rem リリースビルド実行------------------------------------------------------------------
echo リリースビルド実行します
msbuild ConsoleApplication1.sln /p:Configuration=Release /t:Rebuild /p:Platform="x86"

echo Exeデータを複製
copy /y Release\ConsoleApplication1.exe ROM\ConsoleApplication1.exe



exit /B

