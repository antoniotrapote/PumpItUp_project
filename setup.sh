#!/bin/bash

# PumpItUp Project Setup Script
# This script automates the setup process for the PumpItUp machine learning project

echo "🚀 Setting up PumpItUp Machine Learning Project..."
echo "=================================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8+ first."
    exit 1
fi

echo "✓ Python 3 found: $(python3 --version)"

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv .venv

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source .venv/bin/activate

# Upgrade pip
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📚 Installing project dependencies..."
pip install -r requirements.txt

# Test the installation
echo "🧪 Testing installation..."
python test_environment.py

# Check if test passed
if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 Setup completed successfully!"
    echo ""
    echo "To get started:"
    echo "1. Activate the virtual environment: source .venv/bin/activate"
    echo "2. Start Jupyter: jupyter notebook"
    echo "3. Open PumpItUp_AntonioTrapote.ipynb"
    echo ""
    echo "Happy coding! 🐍"
else
    echo "❌ Setup failed. Please check the error messages above."
    exit 1
fi
