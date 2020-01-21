docpre=raw"""
\documentclass[12pt]{article}

\usepackage{setspace}
\onehalfspace

\usepackage{amsmath}
\usepackage{moodle}


\begin{document}

"""


docpost=raw"""
\end{document}

"""

# replace alapu:
quizpre=raw"""
\begin{quiz}{mquizname}

"""

quizpost=raw"""
\end{quiz}

"""


# tfname-true/false name
tfpre=raw"""
\begin{multi}{mtfname}
"""
tfpreFB=raw"""
\begin{multi}[feedback=_FB]{mtfname}
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
