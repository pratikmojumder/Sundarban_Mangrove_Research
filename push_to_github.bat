@echo off
cd /d "E:\Study\Research\My publication\Project for github\Sundarban_Mangrove_Research"

echo Cleaning up old git state...
rmdir /s /q .git 2>nul

echo Initializing fresh repo...
git init -b main
git remote add origin https://github.com/pratikmojumder/Sundarban_Mangrove_Research.git

echo Adding all files...
git add -A

echo Committing...
git config user.email "pratikmojumdar@gmail.com"
git config user.name "Pratik Mojumder"
git commit -m "Clean repo: remove unused files, update favicon and footer"

echo Force pushing to GitHub (this replaces remote with only local files)...
git push -u origin main --force

echo.
echo Done! The extra files (lulc PNGs, PSD, bat) are now removed from GitHub.
echo Press any key to close.
pause >nul
