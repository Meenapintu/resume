
\ProvidesClass{awesome-cv-extension}[2025/12/28 v1.0.0 Awesome Curriculum Vitae extension Class]
\NeedsTeXFormat{LaTeX2e}

% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{awesome-cv}
}
\ProcessOptions\relax
\LoadClass{awesome-cv}



% For elements of entry [Pintu custom]

\newcommand{\metric}[1]{\textbf{\textcolor{darkgray}{#1}}}


% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsectionOverride}[1]{%
  %\vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{sectiondivider}\vhrulefill{0.9pt}
}

% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
\newcommand*{\cventryHZ}[5]{%
  \vspace{-2.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifempty{#2#3}
      {\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
      {\entrytitlestyle{#2}  \entrylocationstyle{#1} &
      \entrypositionstyle{#3}  \entrydatestyle{#4} \\}
    \ifstrempty{#5}
      {}
      {\multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} \\}
  \end{tabular*}%
}

\newcommand*{\skillOverride}[1]{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifstrempty{#1}
      {}
      {\multicolumn{2}{L{\textwidth}}{\descriptionstyle{#1}} \\}
  \end{tabular*}%
}