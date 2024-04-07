# Tech-Talks, a collection of Security Research Presentations
This repository contains the source code of various slide-decks related to security research.

# Editing
These presentations were built using the (overleaf editor)[https://www.overleaf.com/]. To compile,
modify, and view these presentations using the overleaf editor,

1. Load the presentation of interest into a .zip folder, on Linux, `zip -r v8-talk.zip v8-talk/`.
2. Into the overleaf projects menu, select 'New Project', then 'Upload Project'.
3. Select the .zip file from Step 1. The presentation should load automatically.
4. The presentation can be configured using the "config.tex" file in the root of each presentation.


# Presenting
Presenting LaTeX Beamer PDF files is best done with (pympress)[https://pympress.github.io/].  

```
python3 -m pip install pympress
python3 -m pympress presentation.pdf
```

Pympress can then be configured for the correct display using the GUI. Notes can be configured
in a multi-display setup using the 'config.tex' file in each folder. 

# Licensing
Presentations in this repository are subject to licensing pending their LICENSE file. Most are
licensed using the CC BY-NC-SA 4.0 license. That is, one is free to use these materials so long
as credit is given to the original author. Trademarking, patenting, or commercial use of these
materials is not cool. Derivatives of this work must share this license. See README files.
