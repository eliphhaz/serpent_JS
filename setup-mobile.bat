@echo off
echo ========================================
echo  ELIP_SNACK - Configuration Mobile
echo ========================================
echo.

echo [1/5] Installation des dependances npm...
call npm install
if %errorlevel% neq 0 (
    echo Erreur lors de l'installation des dependances
    pause
    exit /b 1
)

echo.
echo [2/5] Copie de index.html vers index-mobile.html...
copy /Y index.html www\index.html

echo.
echo [3/5] Synchronisation Capacitor...
call npx cap sync
if %errorlevel% neq 0 (
    echo Erreur lors de la synchronisation
    pause
    exit /b 1
)

echo.
echo [4/5] Plateformes disponibles:
echo   - Android: npm run cap:add:android
echo   - iOS: npm run cap:add:ios
echo.

echo [5/5] Configuration terminee!
echo.
echo Pour ouvrir le projet:
echo   - Android: npm run cap:open:android
echo   - iOS: npm run cap:open:ios
echo.
pause
