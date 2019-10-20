\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bccv}[03.10.2019 v1.0 Curriculum Vitae Class by Bazyli Cyran]

% Subclassing article
\LoadClassWithOptions{article}

% Page geometry
\RequirePackage[margin=2.5cm,includefoot]{geometry}
\RequirePackage[12pt]{moresize}
% For adjusting section formatting
\RequirePackage{titlesec}
% Used in tablist
\RequirePackage{tabularx}
% For links
\RequirePackage{hyperref}
\RequirePackage[usenames,dvipsnames]{xcolor}
% For adjusting lists
\RequirePackage{enumitem}
% For clause in footer
\RequirePackage{fancyhdr}

%
% SECTIONS
%

% Section title font
\newcommand*{\sectionfont}{\large\bfseries\raggedright}

% Adjust section appearance
\titleformat{\section}{\sectionfont}{}{0em}{}[\titlerule]
\titlespacing{\section}{0pt}{13pt}{8pt}[0pt]
\setlength{\parindent}{0pt}

%
% LINKS
%

\definecolor{linkcolor}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolor,linkcolor=linkcolor}

%
% NAME
%

% Name font
\newcommand*{\namefont}{\HUGE}

% Create name
\newcommand*{\name}[1]{%
    {\centering \namefont{} #1 \bigskip\par}%
}

%
% TABLE LIST
%

% First column width
\newcommand*{\tablistitemwidth}{4cm}
\newcommand*{\tabliststretch}{1.4}

% Create tablist environment
\newenvironment{tablist}{%
    \renewcommand*{\arraystretch}{\tabliststretch}%
    \tabularx{\textwidth}{@{} p{\tablistitemwidth} X @{}}%
}{%
    \endtabularx%
}

% Tablist item
\newcommand*{\tablistitem}[2]{#1 & #2 \\}

%
% LIST
%

\newenvironment{items}{%
    \begin{itemize}[label={---},itemsep=0pt]%
}{
    \end{itemize}%
}

%
% FOOTER CLAUSE
%

% Fancy page style and empty heaader
\pagestyle{fancy}
\renewcommand*{\headrulewidth}{0pt}
\fancyhf{}

% Footer font style
\newcommand*{\footerfont}{\footnotesize\color{gray}}

% Create the footer clause
\newcommand{\clause}[1]{%
    \lfoot{%
        \parbox{\textwidth}{\footerfont{} #1}
    }
}
