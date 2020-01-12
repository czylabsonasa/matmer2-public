docpre=raw"""
\documentclass[12pt]{article}

\usepackage{setspace}
\onehalfspace

%\usepackage[utf8]{inputenc}
%\usepackage{t1enc}
%\usepackage[T1]{fontenc}

\usepackage{amsmath}

\usepackage{moodle}

\DeclareMathOperator{\Exp}{Exp}
\DeclareMathOperator{\Norm}{{\cal N}}
\DeclareMathOperator{\Binom}{Binom}
\DeclareMathOperator{\E}{E}
\DeclareMathOperator{\D}{D}
\renewcommand{\P}{\operatorname{P}}
%\DeclareMathOperator{\Pr}{P}
\DeclareMathOperator{\F}{F}
\DeclareMathOperator{\R}{\mathbb{R}}
%\DeclareMathOperator{\Norm}{{\cal N}}
\DeclareMathOperator{\Unif}{{\cal U}}


\DeclareMathOperator{\cov}{cov}





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
