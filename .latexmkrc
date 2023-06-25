$pdf_mode = 5;
$pdf_previewer = 'open -a Skim';
$xelatex = 'xelatex -no-pdf -interaction=nonstopmode -synctex=1 %O %S';
@generated_exts = (@generated_exts, 'synctex.gz');
