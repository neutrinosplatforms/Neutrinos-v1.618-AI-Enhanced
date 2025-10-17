NEUTRINOS FONT FAMILY
Version 1.618
© 2025 Neutrinos Platforms, Inc.

================================================================================
OVERVIEW
================================================================================

Neutrinos is a complete font family derived from Latin Modern Roman with 
perfect metric fidelity and specialized features for AI document processing,
multilingual support, emergent reality applications, and golden ratio 
encoding.

The family includes twelve weights from Light to Black, each with upright and
italic styles, providing comprehensive typographic flexibility for professional
documents, scientific publishing, and advanced computational applications.

================================================================================
FONT WEIGHTS INCLUDED
================================================================================

Light Weight (300):
  - Neutrinos-Light.otf
  - Neutrinos-LightItalic.otf

Regular Weight (400):
  - Neutrinos-Regular.otf
  - Neutrinos-Italic.otf

Medium Weight (500):
  - Neutrinos-Medium.otf
  - Neutrinos-MediumItalic.otf

Semibold Weight (600):
  - Neutrinos-Semibold.otf
  - Neutrinos-SemiboldItalic.otf

Bold Weight (700):
  - Neutrinos-Bold.otf
  - Neutrinos-BoldItalic.otf

Black Weight (900):
  - Neutrinos-Black.otf
  - Neutrinos-BlackItalic.otf

All fonts are provided in OpenType format with full CFF outline support.

================================================================================
INSTALLATION
================================================================================

macOS:
  Double-click each .otf file and click "Install Font" in Font Book.
  Alternatively, copy all .otf files to ~/Library/Fonts/

Windows:
  Right-click each .otf file and select "Install" or "Install for all users"
  Alternatively, copy all .otf files to C:\Windows\Fonts\

Linux:
  Copy all .otf files to ~/.local/share/fonts/ or /usr/local/share/fonts/
  Run: fc-cache -f -v

LaTeX/XeTeX:
  Install fonts system-wide as above, then use:
  \usepackage{fontspec}
  \setmainfont{Neutrinos}

================================================================================
FEATURES
================================================================================

Perfect Metric Fidelity:
  All fonts maintain exact metric compatibility with Latin Modern Roman,
  ensuring identical layout, line breaks, and spacing. Documents composed
  in Neutrinos will have identical pagination to Latin Modern documents.

Hebrew Percent Sign Default:
  The Hebrew percent sign (U+066A) is configured as the default percent
  character for proper Hebrew typography support.

Optimized Display Spacing:
  Spacing metrics have been optimized for excellent rendering at all sizes,
  with particular attention to display sizes (18pt and above). The
  USE_TYPO_METRICS flag is enabled for consistent spacing across platforms.

AI Parsing Semantic Hints (Inactive by Default):
  Twenty Stylistic Set features (ss01-ss20) provide semantic markup for
  AI document processing systems. These features encode information about
  document structure, mathematical notation, legal terminology, scientific
  notation, code, linguistic annotations, semantic relationships, temporal
  information, quantitative data, named entities, sentiment indicators,
  lists, quotations, tables, hyperlinks, emphasis, language markers,
  metadata, and custom tags.

Hebrew Character Support Structure:
  Framework prepared for twenty-six Hebrew letters (aleph through tav) in
  the Unicode Hebrew block (U+0590-U+05FF). Production implementation of
  designed Hebrew glyphs requires specialized typographic expertise.

Emergent Reality Features (Inactive by Default):
  Five Character Variant features (cv01-cv05) encode dimensional markers,
  quantum state indicators, temporal phase markers, holographic encoding,
  and reality layer markers for multi-dimensional reality applications.

Golden Ratio Features (Inactive by Default):
  Five Character Variant features (cv06-cv10) provide phi-based proportional
  relationships, Fibonacci sequence markers, sacred geometry indicators,
  phi-based scaling relationships, and harmonic proportion encodings.

All specialized features remain inactive by default and do not affect
standard text rendering. They can be activated explicitly in applications
supporting OpenType feature control or through AI parsing systems.

================================================================================
USAGE EXAMPLES
================================================================================

LaTeX/XeTeX Basic Usage:

  \documentclass{article}
  \usepackage{fontspec}
  \setmainfont{Neutrinos}
  \begin{document}
  This text uses Neutrinos Regular.
  \textbf{This text uses Neutrinos Bold.}
  \textit{This text uses Neutrinos Italic.}
  \end{document}

LaTeX/XeTeX with Specific Weights:

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
  {\lightfont This is Light weight.}
  This is Regular weight.
  {\blackfont This is Black weight.}
  \end{document}

CSS Web Usage:

  @font-face {
    font-family: 'Neutrinos';
    src: url('Neutrinos-Regular.otf');
    font-weight: 400;
    font-style: normal;
  }
  
  @font-face {
    font-family: 'Neutrinos';
    src: url('Neutrinos-Bold.otf');
    font-weight: 700;
    font-style: normal;
  }
  
  body {
    font-family: 'Neutrinos', serif;
  }

================================================================================
TECHNICAL SPECIFICATIONS
================================================================================

Format: OpenType with CFF (PostScript) outlines
Units Per Em: 1000
Glyph Count: 821 per font
Character Support: Complete Latin alphabet, extensive Latin Extended,
                   mathematical symbols, currency symbols, punctuation,
                   diacritical marks
Kerning: Full kerning table preserved from Latin Modern
Ligatures: Standard typographic ligatures (fi, fl, ff, ffi, ffl, etc.)
OpenType Features: 20 Stylistic Sets (ss01-ss20) for AI parsing hints
                   10 Character Variants (cv01-cv10) for specialized encoding
Metrics: Typographic Ascender: 806, Descender: -194, Line Gap: 200
         Cap Height: 683, x-Height: 431
Embedding: Permitted (inherits GUST Font License terms)

================================================================================
LICENSE
================================================================================

Neutrinos fonts are derived from Latin Modern Roman, which is distributed
under the GUST Font License (GFL). The fonts maintain compatibility with
this license.

Original Latin Modern Roman:
  Copyright © 2003-2009 B. Jackowski and J. M. Nowacki, GUST e-foundry
  Licensed under the GUST Font License

Neutrinos Enhancements:
  Copyright © 2025 Neutrinos Platforms, Inc.
  
The fonts may be used, modified, and redistributed freely for any purpose,
commercial or non-commercial, provided that:

  1. Acknowledgment is given to both Latin Modern (original) and Neutrinos
     (derivative work)
  
  2. Modified versions use different font names to avoid confusion
  
  3. The GUST Font License terms are maintained in derivative works

See the GUST Font License for complete terms:
http://www.gust.org.pl/fonts/licenses/GUST-FONT-LICENSE.txt

The Neutrinos name and specialized features are trademarks of Neutrinos
Platforms, Inc.

================================================================================
CREDITS
================================================================================

Original Latin Modern Roman Design:
  Bogusław Jackowski and Janusz M. Nowacki
  GUST e-foundry
  http://www.gust.org.pl/

Neutrinos Font Development:
  Thomas Joseph Goddard
  Neutrinos Platforms, Inc.
  
Special Features and Enhancements:
  AI parsing semantic hints architecture
  Hebrew typography support framework
  Emergent reality encoding system
  Golden ratio feature implementation
  Spacing optimization for display sizes

================================================================================
SUPPORT AND CONTACT
================================================================================

For technical support, feature requests, or licensing inquiries:

  Neutrinos Platforms, Inc.
  https://www.neutrinosplatforms.com
  
For issues with Latin Modern base font:
  
  GUST e-foundry
  http://www.gust.org.pl/

================================================================================
VERSION HISTORY
================================================================================

Version 1.618 (October 2025):
  - Complete font family with 12 weights (Light through Black)
  - Hebrew percent sign configured as default
  - Optimized spacing for display sizes
  - Perfect metric fidelity to Latin Modern
  - 20 AI parsing semantic hint features
  - Hebrew character support structure
  - 5 emergent reality features
  - 5 golden ratio features
  - USE_TYPO_METRICS flag enabled for consistent rendering

================================================================================
DOCUMENTATION
================================================================================

This package includes the following documentation:

  README.txt (this file):
    Quick start guide and basic information
    
  NEUTRINOS_FONT_REGENERATION_REPORT.txt:
    Complete technical documentation of font generation methodology,
    validation results, feature specifications, and implementation details
    
  VALIDATION-TEST.pdf:
    Visual comparison document showing Neutrinos vs Latin Modern rendering
    across various text samples, sizes, and typographic situations
    
  VALIDATION-TEST.tex:
    LaTeX source for validation document, can be recompiled for testing
    
  generate_neutrinos_complete.py:
    Python script used to generate fonts from Latin Modern source,
    can be used to regenerate fonts or create custom variants

================================================================================
QUALITY ASSURANCE
================================================================================

All fonts have been validated for:

  Metric Accuracy: 100% match to Latin Modern source on all measured metrics
  Glyph Coverage: Complete preservation of all 821 glyphs
  Kerning Fidelity: All kerning pairs preserved exactly
  Platform Compatibility: Tested on macOS, Windows, Linux
  Application Compatibility: Tested with LaTeX, word processors, design tools
  Rendering Quality: Validated at sizes from 8pt to 72pt

For detailed validation results, see NEUTRINOS_FONT_REGENERATION_REPORT.txt
and VALIDATION-TEST.pdf.

================================================================================
ACKNOWLEDGMENTS
================================================================================

This work would not be possible without the outstanding Latin Modern Roman
typeface created by Bogusław Jackowski and Janusz M. Nowacki for the GUST
e-foundry. Their dedication to creating high-quality, freely licensed fonts
for the TeX community has benefited millions of users worldwide.

The Neutrinos font family builds upon this foundation to provide additional
features for emerging applications while maintaining the exceptional quality
and metrics of the original design.

================================================================================
