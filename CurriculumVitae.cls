%Class to control the look and feel of the Curriculum Vitae
%Copyright 2013 Antonio Sanchez Gomez

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CurriculumVitae}

\LoadClassWithOptions{article}

\pagestyle{empty} %no page numbers

%required packages
\RequirePackage{hyperref} %use of links
\RequirePackage[utf8]{inputenc} %Use full unicode specification
\RequirePackage{titlesec} %modify section command
\RequirePackage[usenames,dvipsnames]{xcolor}%to define new colors
\RequirePackage[tmargin=2.5 cm,bmargin=2.5 cm,rmargin=2.5cm,lmargin=2.5cm]{geometry}%resize margins
\RequirePackage{enumitem}%control space in list
\RequirePackage{ifmtarg}%check for empty args

%Change color of links
\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour,linkcolor=linkcolour}

%Change spacing of enumerates
%\setlist{nosep}


%Put contact details
\newcommand{\name}[1]{\newcommand{\@name}{#1}}
\newcommand{\email}[1]{\newcommand{\@email}{\href{mailto:#1}{#1}}}
\newcommand{\address}[1]{\newcommand{\@address}{#1}}
\newcommand{\phone}[1]{\newcommand{\@phone}{#1}}
\newcommand{\githubaccount}[1]{\newcommand{\@github}{\href{https://github.com/#1}{github.com/#1}}}
\newcommand{\linkedin}[1]{\newcommand{\@linkedin}{\href{https://www.linkedin.com/in/#1}{linkedin.com/in/#1}}}

%Write the headings (name + contact details)
\newcommand{\makeheading}
{
  %name, big and centered
  \centerline{\Huge\bf\em{\@name}}
  \vspace{1.5mm}

  %contact details separated with a big dot
  \centerline{\footnotesize \@github \ $\bullet$ \@linkedin}
  % \centerline{\@email \ $\bullet$\  \@phone}
  \vspace{3.5mm}

}

%Redefine section command
\titleformat{\section}[hang]{\Large\scshape\raggedright}{}{0pt}{}[\titlerule]


%work experience {posit title}{from-to}{company}{city}{country}{description}
\newcommand{\workexp}[6]
{
  \noindent \textbf{#1}, \emph{#3}, #4, #5 \hfill \textbf{\em#2}

  \@ifnotmtarg{#6}
  {\small 
    \begin{itemize}
      #6
    \end{itemize}
  }

  \vspace{2mm}
}

%\educ{diploma}{from-to}{institution}{city}{country}{marks}{description}
\newcommand{\educ}[7]
{
   \noindent \textbf{#1} \hfill \textbf{\em#2}

   {\noindent \emph{#3}, #4, #5}
   
   {\noindent #6}
   
   {\small 
     \begin{itemize}
       #7
    \end{itemize}
    }
    \vspace{2mm}
}