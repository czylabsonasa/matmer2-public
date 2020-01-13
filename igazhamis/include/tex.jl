docpre=raw"""
\documentclass[12pt]{article}

\usepackage{setspace}
\onehalfspace

%\usepackage[utf8]{inputenc}
%\usepackage{t1enc}
%\usepackage[T1]{fontenc}

\usepackage{amsmath}


%\DeclareMathOperator{\Exp}{Exp}
%\def\Exp{{\mathrm{Exp}}}

%\DeclareMathOperator{\Norm}{{\cal N}}
%\def\Norm{{\cal N}}

%\DeclareMathOperator{\Binom}{Binom}
%\def\Binom{{\mathrm{Binom}}}

%\DeclareMathOperator{\E}{E}
%\def\E{{\mathrm{E}}}

%\DeclareMathOperator{\D}{D}
%\def\D{{\mathrm{D}}}

%\renewcommand{\P}{\operatorname{P}}
%\def\P{{\mathrm{P}}}

%\DeclareMathOperator{\cov}{cov}
%\def\cov{{\mathrm{cov}}}


%\DeclareMathOperator{\corr}{corr}
%\def\corr{{\mathrm{corr}}}


%\renewcommand{\d}{\operatorname{d\! }} %integral \! a nyero
%\def\d{{\mathrm{d\! }}}


%\DeclareMathOperator{\R}{\mathbb{R}}
%\def\R{{\mathbb{R}}}

%\DeclareMathOperator{\Unif}{{\cal U}}
%\def\Unif{{\cal U}}

%\DeclareMathOperator{\Poi}{{Poisson}}
%\def\Poi{{\mathrm{Poisson}}}

%\def\ldots{{...\:}}


\usepackage{moodle}


\begin{document}

"""


docpost=raw"""
\end{document}

"""

quizpre=raw"""
\begin{quiz}{mquizname}

"""

quizpost=raw"""
\end{quiz}

"""



tfpre=raw"""
\begin{multi}{mtfname}
"""
tfpost=raw"""
\end{multi}
"""

tfdict=Dict(
true=>
raw"""
\item* igaz
\item hamis
""",
false=>
raw"""
\item igaz
\item* hamis
"""
)
