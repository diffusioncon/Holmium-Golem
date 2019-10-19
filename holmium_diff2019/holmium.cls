\ProvidesClass{kernelgen}
\LoadClass[twoside, 11pt, a4paper]{article}

\usepackage{etex}
\usepackage{type1ec}
\usepackage[T2A]{fontenc}
\usepackage{textcomp}
\usepackage{polyglossia}
\usepackage{graphics}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{amsmath}
\usepackage[xetex,bookmarks,pdfencoding=unicode,colorlinks=true,citecolor=blue,linkcolor=black,urlcolor=blue]{hyperref}
\usepackage{fancyvrb}
\usepackage{verbatim}
\usepackage{listingsutf8}
\usepackage{color}
\usepackage{textcomp}
\usepackage{cmap}
\usepackage[colorinlistoftodos]{todonotes}
\usepackage{lineno}
\usepackage{tocloft}
\usepackage{marginnote}
\usepackage{geometry}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{etoolbox}
\usepackage{titlesec}
\usepackage[font=small,labelfont=it,labelsep=period,justification=centering]{caption}
\usepackage{array}
\usepackage[titletoc]{appendix}%
\usepackage{setspace}

\setsansfont{PT Sans}
\setmonofont{PT Mono}

\font\smallfont="PT Sans" at 9 pt
\font\titlefont="PT Sans Caption Bold" at 16.5 pt
\font\subtitlefont="PT Sans Caption" at 17 pt
\font\chapterfont="PT Sans Caption" at 16 pt
\font\chaptertitlefont="PT Sans Caption" at 18 pt
\font\sectionfont="PT Sans Caption Bold" at 11 pt
\font\subsectionfont="PT Sans Caption" at 11 pt
\font\headerfont="PT Sans Caption" at 9 pt
\font\headerboldfont="PT Sans Caption Bold" at 9 pt
\font\footerboldfont="PT Sans Caption Bold" at 10 pt
\font\datefont="PT Sans" at 10 pt
\titleformat{\chapter}[display]{\chapterfont}
{\chaptertitlename\ \thechapter}{18pt}{\chaptertitlefont}
\titleformat{\section}{\sectionfont}{\color{apc@blue}\thesection.}{0.5em}{\color{apc@blue}}
\titleformat{\subsection}{\subsectionfont}{\color{apc@blue}\thesubsection.}{0.5em}{\color{apc@blue}}
\titleformat{\subsubsection}{\subsectionfont}{\thesubsubsection.}{0.5em}{}
\titleformat{\figure}{}{\thefigure\.}{0.5em}{}

\titlespacing{\section}{0pt}{0pt}{0pt}

\definecolor{apc@black}{RGB}{35, 31, 32}
\definecolor{apc@blue}{RGB}{38,73,158}
\definecolor{apc@gray}{RGB}{230,230,230}
\definecolor{apc@cyan}{RGB}{202,233,249}
\definecolor{apc@lightblue}{RGB}{131,198,237}
\definecolor{darkgreen}{RGB}{25,136,25}
\definecolor{darkyellow}{RGB}{220,207,0}
\definecolor{apc@nvidia}{RGB}{61, 141, 24}

\hypersetup{colorlinks,linkcolor=apc@blue,urlcolor=apc@blue}

\renewcommand{\maketitle}{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [xshift=1.15cm,yshift=-1.2cm] at (current page.north west) [anchor=north west]
    {\includegraphics[height=1.4cm,keepaspectratio]{figures/apc_logo}};
    \node[inner sep=20pt,outer sep=0pt,xshift=2.25cm,yshift=-1.0cm] at (current page.north west) [anchor=north west]
    {Applied Parallel Computing LLC};
    \node[inner sep=20pt,outer sep=0pt,xshift=2.25cm,yshift=-1.4cm] at (current page.north west) [anchor=north west]
    {\href{http://parallel-computing.pro}{http://parallel-computing.pro}};
    \node[inner sep=20pt,outer sep=0pt,xshift=7.55cm,yshift=-1.0cm] at (current page.north west) [anchor=north west]
    {+41 78 925 90 90};
    \node[inner sep=20pt,outer sep=0pt,xshift=7.55cm,yshift=-1.4cm] at (current page.north west) [anchor=north west]
    {\href{mailto:contact@parallel-computing.pro}{contact@parallel-computing.pro}};
    \node[inner sep=20pt,outer sep=0pt,xshift=0.8cm,yshift=-3cm] at (current page.north west) [anchor=north west]
    {\color{apc@blue}\noindent\titlefont{{\@title}}\par};
    \node[inner sep=20pt,outer sep=0pt,xshift=0.8cm,yshift=-3.9cm] at (current page.north west) [anchor=north west]
    {\color{apc@blue}\noindent\sectionfont{{\@author}}\par};
  \end{tikzpicture}%
  \vskip50pt
}

\setmainfont[Scale=MatchLowercase, Mapping=tex-text]{PT Sans}
\newfontfamily\cyrillicfont[Scale=MatchLowercase, Mapping=tex-text]{PT Sans}
\setsansfont[Scale=MatchLowercase, Mapping=tex-text]{PT Sans}
%\setmonofont{Courier New}

\geometry{inner=15mm, outer=13mm, top=35mm, bottom=35mm, headheight=25mm, headsep=6.17mm}
\textwidth=0.86\paperwidth
\linespread{1.2}

% Custom page headers and footers layout
% NOTE: this must go after the geometry
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\fancypagestyle{plain}{
\fancyhf{} % clear all header and footer fields
\fancyhead{}
\fancyfoot[L]{}
\fancyfoot[R]{\footerboldfont\color{apc@blue}\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}

\fancyhf{} % clear all header and footer fields
\fancyhead{
  \begin{tikzpicture}[remember picture,overlay]
    \node [inner sep=0pt,outer sep=0pt,xshift=0cm,yshift=0cm] at (current page.north west) [anchor=north west]
    {\includegraphics[width=\paperwidth,keepaspectratio]{figures/jpg/header}};
    \node [inner sep=0pt,outer sep=0pt,xshift=0cm,yshift=0cm] at (current page.south west) [anchor=south west]
    {\includegraphics[width=\paperwidth,keepaspectratio]{figures/jpg/footer}};
  \end{tikzpicture}
}
\fancyfoot[L]{}
\fancyfoot[R]{\footerboldfont\color{apc@blue}\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\renewcommand{\sectionmark}[1]{\markboth{\headerfont\ #1}{}}

\lstset{
    inputencoding=utf8,
%    backgroundcolor=\color{white},
    tabsize=4,
    rulecolor=,
    basicstyle=\scriptsize,
    upquote=true,
    aboveskip={1.0\baselineskip},
    columns=fixed,
    showstringspaces=false,
    extendedchars=true,
    breaklines=true,
    prebreak = \raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
    frame=single,
    showtabs=false,
    showspaces=false,
    showstringspaces=false,
    identifierstyle=\ttfamily,
    keywordstyle=\ttfamily\color[rgb]{0,0,1},
    commentstyle=\ttfamily\color[rgb]{0.133,0.545,0.133},
    stringstyle=\ttfamily\color[rgb]{0.627,0.126,0.941},
}

% Center all tables
\let\originaltable\table
\let\endoriginaltable\endtable
\renewenvironment{table}[1][ht]{%
  \originaltable[#1]
  \centering}%
  {\endoriginaltable}

% Add dots after chapters / sections numbers in TOC.
\makeatletter
\def\@seccntformat#1{\csname the#1\endcsname.\quad}
\def\numberline#1{\hb@xt@\@tempdima{#1\if&#1&\else.\fi\hfil}}
\makeatother

%% Define a new 'leo' style for the package that will use a smaller font.
\makeatletter
\def\url@leostyle{%
  \@ifundefined{selectfont}{\def\UrlFont{\sf}}{\def\UrlFont{\small\ttfamily}}}
\makeatother
%% Now actually use the newly defined style.
\urlstyle{leo}

\let\contentsnameold\contentsname
\renewcommand{\contentsname}{\sectionfont{\color{apc@blue}\contentsnameold}}

