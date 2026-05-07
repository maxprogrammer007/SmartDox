@echo off
REM SmartDOX Full App Launcher for Windows

echo =========================================
echo   SmartDOX - Full App Startup
echo =========================================
echo.

python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed or not in PATH
    pause
    exit /b 1
)

pip install -r requirements_streamlit.txt -r backend\requirements.txt
if errorlevel 1 (
    echo Error: Failed to install dependencies
    pause
    exit /b 1
)

if not exist ".env" (
    echo [!] .env file not found!
    echo Creating .env from .env.example...
    copy .env.example .env
    echo [✓] .env file created. Please configure it if needed.
)

echo [!] Starting backend on http://localhost:8000
start "SmartDOX Backend" cmd /c "cd /d backend && python main.py"

echo [!] Waiting for backend to initialize...
timeout /t 3 /nobreak >nul

echo [!] Starting Streamlit on http://localhost:8501
streamlit run app.py

pause