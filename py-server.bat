@echo off
REM 进入当前脚本目录
cd /d %~dp0

REM 启动 Python 服务器，后台运行，重定向输出到文件（避免阻塞）
start "" python -m http.server 8080 > server.log 2>&1

REM 等待几秒，确保服务器启动完成
timeout /t 3 /nobreak > nul

REM 打开默认浏览器访问页面
start "" "http://localhost:8080/index4-2.html"

REM 取消注释下行删掉REM，可以同时打开两个页面
REM start "" "http://localhost:8080/index4-1.html"

REM 显示提示，防止窗口自动关闭
echo 服务器已启动，浏览器已打开页面。
echo 按任意键关闭此窗口，服务器会继续运行。
pause