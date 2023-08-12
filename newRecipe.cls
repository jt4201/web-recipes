\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{newRecipe}[2023/08/11]

\LoadClass{article}

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

\pagestyle{empty}
\setlength{\parindent}{0em}

\newsavebox{\myIngred}
\newsavebox{\myMethod}
\newsavebox{\myNotes}

\newcommand{\myTitleText}{}
\newcommand{\myURLText}{}
\newcommand{\myServings}{}
\newcommand{\myPrepTime}{}
\newcommand{\myCookTime}{}
\newcommand{\myTotalTime}{}
\newcommand{\myAuthor}{}
\newcommand{\myPreamble}{}
\newcommand{\myFilename}{}


\newcommand{\cmdSubtitle}[2]{%
{\sffamily {\color{Gray} #1:} #2}}

% \setmainfont{TeX Gyre Bonum}
\setmainfont{Alegreya Sans Medium}

\graphicspath{ {./images/} }

\hypersetup{
  colorlinks,
  urlcolor=blue,
  citecolor=black,
  linkcolor=ForestGreen
}

