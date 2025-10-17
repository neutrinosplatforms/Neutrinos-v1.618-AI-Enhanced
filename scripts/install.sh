#!/bin/bash

################################################################################
# Neutrinos Font Family v1.618 Installation Script
# Copyright © 2025 Neutrinos Platforms, Inc.
# Thomas Joseph Goddard, Creator
################################################################################

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_ROOT="$(dirname "$SCRIPT_DIR")"

echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  NEUTRINOS FONT FAMILY v1.618 INSTALLATION                  ║${NC}"
echo -e "${BLUE}║  Professional Typography with Advanced Computational        ║${NC}"
echo -e "${BLUE}║  Features                                                    ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${YELLOW}Thomas Joseph Goddard${NC}"
echo -e "${YELLOW}Neutrinos Platforms, Inc.${NC}"
echo ""

echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${RED}WARNING: HIGHLY RESTRICTIVE LICENSE${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "Installation and use require explicit authorization."
echo "See LICENSE.txt for complete terms."
echo ""
read -p "Do you have required authorization? (yes/no): " AUTHORIZED

if [ "$AUTHORIZED" != "yes" ]; then
    echo ""
    echo -e "${RED}Installation cancelled.${NC}"
    exit 1
fi

echo ""
echo -e "${BLUE}Detecting operating system...${NC}"

OS="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
    echo -e "${GREEN}✓ Linux detected${NC}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
    echo -e "${GREEN}✓ macOS detected${NC}"
else
    echo -e "${RED}✗ Unsupported operating system${NC}"
    exit 1
fi

echo ""
echo -e "${BLUE}Installing font files...${NC}"

if [ "$OS" == "linux" ]; then
    FONT_DIR="$HOME/.local/share/fonts/neutrinos"
    mkdir -p "$FONT_DIR"
    cp "$PACKAGE_ROOT/fonts"/*.otf "$FONT_DIR/"
    echo -e "${GREEN}✓ Font files copied to $FONT_DIR${NC}"
    if command -v fc-cache &> /dev/null; then
        fc-cache -f -v "$FONT_DIR" > /dev/null 2>&1
        echo -e "${GREEN}✓ Font cache refreshed${NC}"
    fi
elif [ "$OS" == "macos" ]; then
    FONT_DIR="$HOME/Library/Fonts"
    cp "$PACKAGE_ROOT/fonts"/*.otf "$FONT_DIR/"
    echo -e "${GREEN}✓ Font files copied to $FONT_DIR${NC}"
fi

if command -v kpsewhich &> /dev/null; then
    echo ""
    echo -e "${BLUE}Installing LaTeX package...${NC}"
    TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)
    if [ -z "$TEXMFHOME" ]; then
        TEXMFHOME="$HOME/texmf"
    fi
    LATEX_PKG_DIR="$TEXMFHOME/tex/latex/neutrinos"
    mkdir -p "$LATEX_PKG_DIR"
    cat > "$LATEX_PKG_DIR/neutrinos.sty" << 'EOF'
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{neutrinos}[2025/10/17 v1.618 Neutrinos Font Family Package]
\RequirePackage{fontspec}
\setmainfont{Neutrinos}[
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic
]
\newfontfamily\lightfont{Neutrinos}[
    UprightFont = *-Light,
    ItalicFont = *-LightItalic
]
\newfontfamily\mediumfont{Neutrinos}[
    UprightFont = *-Medium,
    ItalicFont = *-MediumItalic
]
\newfontfamily\semiboldfont{Neutrinos}[
    UprightFont = *-Semibold,
    ItalicFont = *-SemiboldItalic
]
\newfontfamily\blackfont{Neutrinos}[
    UprightFont = *-Black,
    ItalicFont = *-BlackItalic
]
\newcommand{\goldenratio}{\ensuremath{\varphi}}
\endinput
EOF
    echo -e "${GREEN}✓ LaTeX package created${NC}"
    if command -v mktexlsr &> /dev/null; then
        mktexlsr "$TEXMFHOME" > /dev/null 2>&1
        echo -e "${GREEN}✓ TeX database updated${NC}"
    fi
fi

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  INSTALLATION COMPLETE                                       ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}Fonts installed successfully${NC}"
echo ""

exit 0
