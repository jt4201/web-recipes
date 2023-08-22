$pdf_mode = 5;
$pdf_previewer = 'open -a Skim';
$makeindex = 'makeindex -s index_style.ist %O -o %D %S';
$xelatex = 'xelatex -no-pdf -interaction=nonstopmode -synctex=1 %O %S';
@generated_exts = (@generated_exts, 'synctex.gz');
