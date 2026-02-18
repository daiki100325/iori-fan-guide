@echo off
chcp 65001 > nul
echo ==========================================
echo    GitHub Pages 更新ツール
echo ==========================================
echo.

echo 変更点をGitに追加しています...
git add .

echo.
set /p commit_msg="変更内容を入力してください (Enterで「サイト更新」): "
if "%commit_msg%"=="" set commit_msg=サイト更新

echo.
echo コミットを作成しています...
git commit -m "%commit_msg%"

echo.
echo GitHubへアップロードしています...
git push origin master

echo.
echo ==========================================
echo  更新が完了しました！
echo  数分後にサイトに反映されます。
echo ==========================================
pause
