# 597C1-Cryptography

In a fresh VM or CT
> apt update 
> apt upgrade 
> apt install git 
> apt install pandoc 
> apt install texlive 
> apt install latexmk 
> git clone https://github.com/hebr3/597C1-Cryptography.git 
> cd 597C1-Cryptography 

Use pandoc to convert markdown (.md) files to pdf

`pandoc MCS597C-Syllabus.md --pdf-engine=latexmk -o "MCS 597C-1 Cryptography Syllabus".pdf`

> Pandoc failed to copy over annotations so I had to copy the file to odt format and export as pdf with annotations. Annotations and bookmarks do appear in the compiled pdf file so I think this might be an issue with the software used to validate the uploaded pdf files.
