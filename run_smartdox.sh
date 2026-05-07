#!/bin/bash

set -e

echo "========================================="
echo "  SmartDOX - Full App Startup"
echo "========================================="
echo ""

if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed or not in PATH"
    exit 1
fi

if ! command -v pip3 &> /dev/null; then
    echo "Error: pip3 is not installed"
    exit 1
fi

echo "[!] Installing required packages from requirements_streamlit.txt and backend/requirements.txt"
pip3 install -r requirements_streamlit.txt -r backend/requirements.txt

echo "[✓] Dependencies installed"

if [ ! -f ".env" ]; then
    echo "[!] .env file not found!"
    echo "Creating .env from .env.example..."
    cp .env.example .env
    echo "[✓] .env file created. Please configure it if needed."
fi

echo "[!] Starting backend on http://localhost:8000"
cd backend
python3 main.py > ../backend.log 2>&1 &
BACKEND_PID=$!
cd ..

cleanup() {
    echo ""
    echo "Stopping SmartDOX services..."
    kill "$BACKEND_PID" 2>/dev/null || true
}

trap cleanup EXIT INT TERM

echo "[!] Waiting for backend to initialize..."
sleep 3

echo "[!] Starting Streamlit on http://localhost:8501"
streamlit run app.py