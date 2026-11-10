#!/bin/bash
cd "$(dirname "$0")"

# If in outer folder, enter inner folder
if [ -d "FormuLa-X" ]; then
    cd "FormuLa-X"
fi

echo "========================================"
echo " Compiling FormuLa-X on macOS..."
echo "========================================"

clang++ -std=c++17 pro_xxx.cpp transpose.cpp caeser.cpp -o project

if [ $? -eq 0 ]; then
    echo "========================================"
    echo " Build succeeded! Launching FormuLa-X..."
    echo "========================================"
    echo ""
    ./project
else
    echo "Build failed. Please check compiler errors above."
    read -p "Press Enter to exit..."
fi
