@echo off
REM 进入项目根目录（这里假设bat和项目在同一目录）
cd /d %~dp0

REM 检查 live-server 是否安装
where live-server >nul 2>&1
if errorlevel 1 (
  echo live-server 未安装，请先运行：npm install -g live-server
  pause
  exit /b 1
)

REM 启动 live-server，端口8080，不自动打开浏览器（如果想自动打开去掉 --no-browser）
live-server --port=8080 --no-browser

REM 打开默认浏览器访问页面
start "" "http://localhost:8080/index4-2.html"

REM 取消注释下行删掉REM，可以同时打开两个页面
REM start "" "http://localhost:8080/index4-1.html"

REM 显示提示，防止窗口自动关闭
echo 服务器已启动，浏览器已打开页面。
echo 按任意键关闭此窗口，服务器会继续运行。
pause