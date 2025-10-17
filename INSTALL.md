# Neutrinos Font Family - Installation Guide

This document provides detailed installation instructions for the Neutrinos Font Family v1.618 across different operating systems and usage contexts.

---

## Quick Installation

### Automated Installation (Recommended)

For macOS and Linux users, the automated installation script provides the fastest and most reliable installation method:

```
cd neutrinos-v1.618
sudo ./scripts/install.sh
```

The script will install fonts to your system, create a LaTeX package if TeX Live is detected, and verify the installation automatically.

---

## Manual Installation by Operating System

### macOS Installation

#### Method 1: Font Book (Graphical)

Locate the fonts directory within the Neutrinos package. Double-click each OTF file. Click Install Font in the Font Book window that appears. Repeat for all twelve font files. The fonts are immediately available to all applications.

#### Method 2: Terminal (Command Line)

```
cp neutrinos-v1.618/fonts/*.otf ~/Library/Fonts/
```

The fonts are immediately available after copying. No restart required.

---

### Windows Installation

#### Method 1: Right-Click Installation (Graphical)

Open the fonts directory within the Neutrinos package. Select all OTF files using Ctrl+A. Right-click the selection. Choose Install for current user or Install for all users (requires administrator privileges). Wait for installation to complete. Restart applications to refresh font lists.

#### Method 2: Fonts Folder (Manual)

Open C:\Windows\Fonts\ in File Explorer. Drag and drop all OTF files from the Neutrinos fonts directory. Windows will automatically install the fonts. Restart applications to refresh font lists.

---

### Linux Installation

#### User Installation (Recommended)

Install fonts for the current user only:

```
mkdir -p ~/.local/share/fonts/neutrinos
cp neutrinos-v1.618/fonts/*.otf ~/.local/share/fonts/neutrinos/
fc-cache -f -v
```

The fonts are immediately available after the font cache refresh.

#### System-Wide Installation (Requires sudo)

Install fonts for all users on the system:

```
sudo mkdir -p /usr/local/share/fonts/neutrinos
sudo cp neutrinos-v1.618/fonts/*.otf /usr/local/share/fonts/neutrinos/
sudo fc-cache -f -v
```

All users can access the fonts immediately after cache refresh.

---

## LaTeX Integration

### Automatic LaTeX Package Installation

The automated installation script creates a LaTeX package if TeX Live is detected. After running the install script, you can use:

```
\documentclass{article}
\usepackage{neutrinos}

\begin{document}
This text uses Neutrinos.
\end{document}
```

Compile with XeLaTeX or LuaLaTeX:

```
xelatex document.tex
```

### Manual LaTeX Integration

If you prefer manual integration without the neutrinos package:

```
\documentclass{article}
\usepackage{fontspec}

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

\newfontfamily\blackfont{Neutrinos}[
    UprightFont = *-Black,
    ItalicFont = *-BlackItalic
]

\begin{document}
{\lightfont Light weight text}
Regular weight text
{\blackfont Black weight text}
\end{document}
```

---

## Verification

### Command Line Verification

For macOS and Linux:

```
fc-list | grep Neutrinos
```

Should display all twelve Neutrinos font variants with their file paths.

For LaTeX package verification:

```
kpsewhich neutrinos.sty
```

Should display the path to the neutrinos.sty package file if LaTeX integration was successful.

### Application Verification

Open any application supporting custom fonts such as Word or TextEdit. Access the font selection menu. Search for Neutrinos in the font list. All twelve weights should appear as separate entries or within a weight selector.

---

## Troubleshooting

### Fonts Not Appearing in Applications

For macOS, log out and log back in to refresh system font cache. For Windows, restart the application or reboot if fonts still do not appear. For Linux, run fc-cache -f -v again and verify with fc-list piped to grep Neutrinos.

### LaTeX Package Not Found

Verify TeX Live installation using which xelatex and kpsewhich --var-value TEXMFHOME. If TEXMFHOME is not set, manually set it in your shell profile using export TEXMFHOME=$HOME/texmf, then re-run the installation script.

### Permission Denied Errors

The installation script requires sudo on Linux for system-wide installation. For user-only installation, remove the sudo prefix and use the user installation paths shown above.

### Font Rendering Issues

Ensure you are using XeLaTeX or LuaLaTeX, not pdfLaTeX. The Neutrinos fonts are OpenType and require the fontspec package which only works with XeLaTeX and LuaLaTeX.

---

## License Compliance

The Neutrinos Font Family is protected by a highly restrictive license agreement. Installation and use require explicit written permission from Thomas Joseph Goddard, notarization of permission documents by licensed notary public, video recording of permission grant with specific technical requirements, registration with Neutrinos Platforms Incorporated within fifteen days, and payment of applicable licensing fees.

See LICENSE.txt for complete terms.

For licensing inquiries:

Neutrinos Platforms, Inc.  
ATTN: Font Licensing Department  
Thomas Joseph Goddard, Creator  
1125 17th Street, Suite 2044  
Oakland, CA 94607  
United States of America

Email: licensing@neutrinos.app  
Phone: (775) 691-4194  
Website: https://neutrinos.app

---

Copyright © 2025 Neutrinos Platforms, Inc.  
All Rights Reserved Worldwide
