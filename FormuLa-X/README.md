# FormuLa-X

An interactive, cross-platform command-line cipher suite featuring **FormuLa-X** (a custom multi-stage hybrid cipher), **2D Matrix Transposition**, and the classic **Caesar Cipher**. The application includes ANSI color graphics, step-by-step visual demonstration mode, and direct text and Microsoft Word (.docx) file encryption.

## Table of Contents

- [Features](#features)
- [Ciphers Included](#ciphers-included)
- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
  - [macOS / Linux](#macos--linux)
  - [Windows](#windows)
  - [VS Code Execution](#vs-code-execution)
- [File Support](#file-support)
- [Project Structure](#project-structure)
- [License](#license)

## Features

- Multi-Cipher Suite: Switch between custom, matrix-based, and classical ciphers from an interactive menu.
- Cross-Platform: Natively compiles and runs on macOS, Linux, and Windows.
- File Encryption and Decryption: Encrypt or decrypt plain text directly or process external .txt and .docx documents.
- Step-by-Step Visual Mode: Visual demonstration of string segmentation, shifting, and segment shuffling.
- Terminal UI: Styled with ANSI color codes and ASCII logo banners.

## Ciphers Included

### 1. FormuLa-X Cipher (Custom)
FormuLa-X is a multi-tier hybrid cipher:
1. Dynamic Key Derivation: Uses user keys with modular equations and XOR transformations.
2. Pseudo-Random Segmentation: Splits plaintext into randomized segments (3 to 5 slices).
3. ASCII Range Shifting: Shifts characters across the printable ASCII range (32 to 126).
4. Permutation Shuffling: Shuffles segmented slices using randomized permutation.
5. Reversible Permutation Header: Encodes the shuffle sequence mathematically into a self-contained header for deterministic decryption.

### 2. Transpose Cipher (2D Grid)
- Arranges text into a dynamic matrix.
- Pads text with X if length does not match matrix dimensions.
- Performs 2D cyclical row and column shifts.
- Reconstructs cipher text column-by-column and cleanly removes padding on decryption.

### 3. Caesar Cipher
- Classical rotational alphabet substitution.
- Supports arbitrary shift values (positive, negative, and shifts greater than 26).
- Preserves uppercase, lowercase, punctuation, and whitespace.

## Prerequisites

1. C++17 Compiler:
   - macOS: Apple Clang (installed via `xcode-select --install`)
   - Linux: GCC / G++ (`g++`)
   - Windows: MinGW-w64 / MSYS2 (`g++`) or MSVC
2. Python 3 (Optional, only needed for .docx Word files):
   - `pip3 install python-docx`

## Quick Start

### macOS / Linux

- Double-click `run.command` in Finder, or run:
  ```bash
  ./run.command
  ```
- Or compile manually:
  ```bash
  clang++ -std=c++17 pro_xxx.cpp transpose.cpp caeser.cpp -o project
  ./project
  ```

### Windows

- Double-click `restore_debug.bat`, or run:
  ```powershell
  g++ pro_xxx.cpp transpose.cpp caeser.cpp -o project.exe -std=c++17
  .\project.exe
  ```

### VS Code Execution

1. Open the repository folder in VS Code.
2. Build and run using any method:
   - Press `Cmd + Shift + B` (macOS) or `Ctrl + Shift + B` (Windows) to build.
   - Go to Terminal > Run Task... > Run FormuLa-X.
   - Open terminal (`Ctrl + ~`) and run `./run.command` (macOS) or `.\project.exe` (Windows).

## File Support

- Plain Text (.txt): Read and written natively through C++ file streams.
- Microsoft Word (.docx): Converted to plaintext via `docxtotxt.py` using `python-docx`, processed by the C++ engine, and exported back to .docx via `txt_to_docx.py`.

## Project Structure

```text
FormuLa-X/
├── .vscode/                 # VS Code tasks and debug configurations
│   ├── launch.json          # Debugger launch setup (LLDB / GDB)
│   ├── settings.json        # Editor associations and formatting
│   └── tasks.json           # Build and run tasks
├── caeser.cpp               # Caesar cipher implementation
├── caeser.h                 # Caesar cipher declarations
├── transpose.cpp            # 2D matrix transpose cipher implementation
├── transpose.h              # Transpose cipher declarations
├── pro_xxx.cpp              # Main application entry point and FormuLa-X engine
├── docxtotxt.py             # Helper: converts .docx to .txt
├── txt_to_docx.py           # Helper: converts .txt to .docx
├── run.command              # 1-click build and launch script (macOS/Linux)
├── restore_debug.bat        # 1-click build and launch script (Windows)
├── .gitignore               # Ignores binaries, temp files, and caches
└── README.md                # Project documentation
```

## License

This project is licensed under the MIT License.
