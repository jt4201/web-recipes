\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myRecipe}[2023/08/04]

\LoadClass{article}

\RequirePackage[nonewpage]{imakeidx}
\makeindex[name=recipelist,title=Recipes,columns=3, intoc=true, program=makeindex]

\RequirePackage[vcentering, noheadfoot, landscape, margin=6mm]{geometry}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{fontspec}
\RequirePackage{xfrac}
\RequirePackage{nicefrac}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{subfiles}
\RequirePackage[noindentafter]{titlesec}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{ifthen}

\setsansfont{Alegreya Sans Black}
\setmainfont{Alegreya Sans Medium}

\hypersetup{
  colorlinks,
  urlcolor=blue,
  citecolor=black,
  linkcolor=ForestGreen
}

\newsavebox{\Ingredients}
\newsavebox{\Instructions}
\newsavebox{\ingredients}
\newsavebox{\method}
\newsavebox{\notes}
\newsavebox{\tips}

\newcommand{\mytitle}{}
\newcommand{\myurl}{}
\newcommand{\mycourse}{}

\newcommand{\myAuthor}{}
\newcommand{\myTitle}[2]{%
\textsf{\Large #2}%
\index[recipelist]{#1!#2}}
\newcommand{\myTitletext}{}
\newcommand{\mySubtitle}[1]{{\sffamily #1}}
\newcommand{\myServings}[1]{%
\ifthenelse{\equal{#1}{}}{}{{\bfseries Servings:} #1}}
\newcommand{\myServingstext}{}
\newcommand{\myUrl}[2]{{\bfseries Source:} \href{#1}{#2}}
\newcommand{\myUrltext}{}

\titleformat{\subsubsection}[hang]{\bfseries\Large}{}{0pt}{}
% \titlespacing*{\subsubsection}{0pt}{0pt}{1ex}
\titlespacing*{\subsubsection}{0pt}{*1}{*1.5}

\setlist{%
  before=\raggedright\small,
  labelindent = 0.5em, labelsep = 0.5em,
  leftmargin=1em, nosep, itemsep=0.5ex,
}

\pagestyle{empty}
\setlength{\parindent}{0pt}

\newcommand{\mainlist}[2]{\index[recipelist]{#1!#2}}
\newcommand{\myRecipe}[2]{%
\textbf{\fontspec{Alegreya Sans Black}\Large #2}\index[recipelist]{#1!#2}}

