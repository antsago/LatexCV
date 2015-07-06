
%Class to control the look and feel of the Curriculum Vitae
%Copyright 2013 Antonio Sanchez Gomez
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CurriculumVitae}

\LoadClassWithOptions{article}

\pagestyle{empty} %no page numbers

%required packages
\RequirePackage{hyperref} %use of links
\RequirePackage[utf8]{inputenc} %Use full unicode specification
\RequirePackage{titlesec} %modify section command
\RequirePackage[usenames,dvipsnames]{xcolor}%to define new colors
\RequirePackage[tmargin=1.5cm,bmargin=1cm,rmargin=2cm,lmargin=2cm]{geometry}%resize margins
\RequirePackage{enumitem}%control space in list

%Change color of links
\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour,linkcolor=linkcolour}

%Change spacing of enumerates
\setlist{nosep}


%Put contact details
\newcommand{\name}[1]{\newcommand{\@name}{#1}}
\newcommand{\email}[1]{\newcommand{\@email}{\href{mailto:#1}{#1}}}
\newcommand{\address}[1]{\newcommand{\@address}{#1}}
\newcommand{\phone}[1]{\newcommand{\@phone}{#1}}
\newcommand{\githubaccount}[1]{\newcommand{\@github}{github: \href{https://github.com/#1}{github.com/#1}}}

%Write the headings (name + contact details)
\newcommand{\makeheading}
{
  \centerline{\Huge\bf\em{\@name}}%name, big and centered
  %contact details separated with a big dot
  \centerline{\footnotesize\@address \ $\bullet$\  \@phone}
  \centerline{\footnotesize\@email \  $\bullet$ \ \@github}
}

%Redefine section command
\titleformat{\section}{\Large\scshape\raggedright}
{}{0em}{}
[\titlerule]


%\workexp{posit title}{from-to}{place}{description}
\newcommand{\workexp}[4]
{\noindent \textbf{#1} at #3 \hfill \textbf{\em#2}\\
 {\footnotesize#4}\vspace{3mm}}

%\educ{diploma}{from-to}{institution}{city}{country}{marks}
%{description}
\newcommand{\educ}[7]
{\noindent \textbf{#1} \hfill \textbf{\em#2}\\
 {\small \emph{#3}, #4, #5\\ #6\\}
 {\footnotesize#7}\vspace{3mm}}

%Specify the contents of the covering letter
\newcommand{\coveringletter}[1]{\newcommand{\@coveringletter}{#1}}
\newcommand{\position}[1]{\newcommand{\@position}{#1}}

%Write the covering letter
\newcommand{\writecl}{
  {\noindent
   Finisterre 5, 2º1,\\
   28029, Madrid\\
   Spain\\
   \vspace{10mm}}
   
   Dear Sir/Madam:\\\vspace{3mm}
  \centerline{\textbf{\large \@position}}
  \@coveringletter\vspace{10mm}\\
  Yours faithfully,\\
  Antonio Sanchez Gomez
  
  \newpage
}





