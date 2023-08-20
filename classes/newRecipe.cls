\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{newRecipe}[2023/08/11]

\LoadClass{article}

\RequirePackage[nonewpage]{imakeidx}
\makeindex[name=recipelist,title=Recipes,columns=2, intoc=true, program=makeindex]
\makeindex[name=authorlist,title=Authors,columns=2, intoc=true, program=makeindex]

\RequirePackage{ifthen}
\RequirePackage[noheadfoot,nomarginpar,margin=5mm]{geometry}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{fontspec}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{adjustbox}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{xfrac}
\RequirePackage{subfiles}

\graphicspath{ {./images/} }
\pagestyle{empty}
\setlength{\parindent}{0em}

\newsavebox{\myIngred}
\newsavebox{\myMethod}
\newsavebox{\myNotes}
\newsavebox{\myTitle}
\newsavebox{\myImage}

\newcommand{\myTitleText}{}
\newcommand{\myURLText}{}
\newcommand{\myServings}{}
\newcommand{\myPrepTime}{}
\newcommand{\myCookTime}{}
\newcommand{\myTotalTime}{}
\newcommand{\myAuthor}{}
\newcommand{\myPreamble}{}
\newcommand{\myFilename}{}
\newcommand{\myIndexEntry}{}


\newcommand{\cmdSubtitle}[2]{%
{{\color{Gray} #1:} #2}}

% \setmainfont{TeX Gyre Bonum}
% \setmainfont{Myriad Pro}
\setsansfont{Alegreya Sans Medium}
\setmainfont{Alegreya Sans Medium}

\hypersetup{
  colorlinks,
  urlcolor=blue,
  citecolor=black,
  linkcolor=ForestGreen
}

\setlist{
  noitemsep,
  topsep=2pt
}

\newlist{jitem}{itemize}{4}
\setlist[jitem,1]
{
  label=,
  leftmargin=1em,
  before=\raggedright\bfseries\normalsize,
}

\newlist{jsubitem}{itemize}{3}
\setlist[jsubitem,1]
{
  label=\textbullet,
  leftmargin=1em,
  before=\raggedright\mdseries\small,
  itemsep=0.5ex
}

\newlist{jnum}{enumerate}{3}
\setlist[jnum,1]
{
  label=\arabic*.,
  before=\raggedright\mdseries\small,
  itemsep=0.5ex
}

\newcommand{\cmdRecipe}[3]{%
  \index[#1]{#2!#3}
}

