%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                	%
%  UT.UT.UT.UT.UT            UT.UT.UT.UT.UT.U  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT""	%
%  UT.UT.UT.UT.UT          ""UT.UT.UT.UT.UT.U  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT  	%
%  UT.UT.UT.UT.UT      ""UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT.;;    	%
%  UT.UT.UT.UT.UT      UT.UT.UT.UT.UT.UT.UT.U  UT.UT.UT.UT.UT.UT.UT.UT.UT;;      	%
%  UT.UT.UT.UT.UT    "UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT        	%
%  UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.""          	%
%  UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.            	%
%  UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.              	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.U    UT.UT.UT.UT.                      	%
%    UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.      UT.UT.UT.UT.                      	%
%      UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT        UT.UT.UT.UT.                      	%
%        UT.UT.UT.UT.UT.UT.UT.UT.UT.U          UT.UT.UT.UT.                      	%
%            UT.UT.UT.UT.UT.UT.UT.U            UT.UT.UT.UT.                      	%
%-----------------------------------------------------------------------------------%
%-----------------------------------------------------------------------------------%
%	      T H E S I S	  &   	D I S S E R T A T I O N    T E M P L A T E			%
%-----------------------------------------------------------------------------------%
%-----------------------------------------------------------------------------------%
% This template is distributed with ABSOLUTELY NO WARRANTY.
% It serves as a guideline and constitutes a basic structure for a
% thesis/dissertation. The user assumes full responsibility for formatting
% and typesetting their document and for verifying that all the thesis
% requirements set by the University of Tennessee are met. Please refer to the most
% recent UT thesis guide (http://web.utk.edu/~thesis/thesisresources.shtml)
% or contact the thesis consultant (http://web.utk.edu/~thesis/).
% Please report any bugs to the thesis consultant.
\NeedsTeXFormat{LaTeX2e}%
\def\filename{utthesis.cls}%
\def\fileversion{ver 1.0.0}%
\def\filedate{March 30, 2010}%
\def\contributors{Tony Saad}%
\typeout{\filename}%
\typeout{\fileversion}%
\typeout{Created by Tony Saad}%
\typeout{\filedate}%
\typeout{Some parts and settings of this class are based on the template provided by David L. Page.}
%---------------------------------------------------------------------------------------------------%
\ProvidesClass{utthesis}
% some internal variables
\def\thesisID{1}%
\def\dissertationID{2}%
\def\theDocumentType#1{\gdef\@theDocumentType{#1}}%
\def\documentID#1{\gdef\@documentID{#1}}% documentID is either 1 (for thesis) or 2 (for dissertation)
% declare package options
\DeclareOption{thesis}{%
    \def\@theDocumentType{thesis}%
    \def\@documentID{\thesisID}}%
\DeclareOption{dissertation}{%
    \def\@theDocumentType{dissertation}%
    \def\@documentID{\dissertationID}}%
\DeclareOption{linespacing}{\@lnspacing}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ExecuteOptions{dissertation,letterpaper,12pt}% execute default options
\ProcessOptions%
\LoadClass{report} % single-sided
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Main Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\copyrightYear#1{\gdef\@copyrightYear{#1}}%
\def\graduationMonth#1{\gdef\@graduationMonth{#1}}%
\def\majorProfessor#1{\gdef\@majorProfessor{#1}}%
\def\keywords#1{\gdef\@keywords{#1}}%
\def\viceProvost#1{\gdef\@viceProvost{#1}} %
\def\major#1{\gdef\@major{#1}}%
\def\degree#1{\gdef\@degree{#1}}%
\def\college#1{\gdef\@college{#1}}%
\def\dept#1{\gdef\@dept{#1}}%
\def\university#1{\gdef\@university{#1}}%
\def\numberOfCommitteeMembers#1{\gdef\@numberOfCommitteeMembers{#1}} % enter the number of committee members
\def\committeeMemberA#1 {\gdef\@committeeMemberA{#1}}% first committee member
\def\committeeMemberB#1 {\gdef\@committeeMemberB{#1}}% second committee member
\def\committeeMemberC#1 {\gdef\@committeeMemberC{#1}}% ... you get the trend!
\def\committeeMemberD#1 {\gdef\@committeeMemberD{#1}}%
\def\committeeMemberE#1 {\gdef\@committeeMemberE{#1}}%
\def\committeeMemberTitleA #1 {\gdef\@committeeMemberTitleA{#1}}
\def\committeeMemberTitleB #1 {\gdef\@committeeMemberTitleB{#1}}
\def\committeeMemberTitleC #1 {\gdef\@committeeMemberTitleC{#1}}
\def\committeeMemberTitleD #1 {\gdef\@committeeMemberTitleD{#1}}
\def\committeeMemberRoleA #1 {\gdef\@committeeMemberRoleA{#1}}
\def\committeeMemberRoleB #1 {\gdef\@committeeMemberRoleB{#1}}
\def\committeeMemberRoleC #1 {\gdef\@committeeMemberRoleC{#1}}
\def\committeeMemberRoleD #1 {\gdef\@committeeMemberRoleD{#1}}
% initialize macros
\def\@title{Thesis Title}
\def\@author{author name}
\def\@keywords{your keywords}
\def\@graduationMonth{December}
\def\@copyrightYear{2020}
\def\@majorProfessor{Advisor name}
\def\@degree{Master of Science}	% degree type
\def\@college{Engineering and Computer Science}           % college
\def\@dept{Mechanical Engineering}	% department
\def\@viceProvost{name}    % vice provost name
\def\@major{Mechanical Engineering}	% major
\def\@university{The University  of Tennessee at Chattanooga}	% school
\def\@numberOfCommitteeMembers{3}
\def\@committeeMemberA {Committee member A}	% first committee member
\def\@committeeMemberB {Committee member B}	% second committee member
\def\@committeeMemberC {Committee member C}	% ... you get the trend!
\def\@committeeMemberD {Committee member D}	%
\def\@committeeMemberE {Committee member E}	%
\def\@committeeMemberTitleA {Committee member title A}
\def\@committeeMemberTitleB {Committee member title B}
\def\@committeeMemberTitleC {Committee member title C}
\def\@committeeMemberTitleD {Committee member title D}
\def\@committeeMemberRoleA {Committee member role A}
\def\@committeeMemberRoleB {Committee member role B}
\def\@committeeMemberRoleC {Committee member role C}
\def\@committeeMemberRoleD {Committee member role D}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	LOAD PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsthm,amssymb}     % AMS math, AMS theorem, AMS fonts
\RequirePackage{setspace}                   % line spacing
\RequirePackage[vcentering,dvips]{geometry}	% help with margins
\RequirePackage[pdftex,plainpages=false,pdfpagelabels=true,breaklinks=true,pagebackref]{hyperref} % for pdf bookmarks
\RequirePackage{color}
\RequirePackage{multicol}
%----------------------------------------------------------------------------------------------------%
% define theorem, corollary, and lemma environments
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]
%----------------------------------------------------------------------------------------------------%
% allow empty pages before chapters (i.e. no page numbers)
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}
\let\cleardoublepage\clearemptydoublepage
%----------------------------------------------------------------------------------------------------%
\hypersetup{%
	bookmarksnumbered = true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfsubject={\@dept},
	pdfkeywords={\@keywords},
	pdfpagelayout=SinglePage,
    bookmarksopen=False,
	%pdfview=FitV,
	pdfborder=0 0 0, 		% make all links invisible, so the pdf looks good when printed
    pdffitwindow=true,      % window fit to page when opened
    %pdfstartview={FitV},   % fits the width of the page to the window
    pdfcreator={\@author},  % creator of the document
    pdfnewwindow=true,      % links in new window
    colorlinks=true,        % false: boxed links; true: colored links
    linkcolor=blue,         % color of internal links
    citecolor=magenta,      % color of links to bibliography
    filecolor=magenta,      % color of file links
    urlcolor=cyan           % color of external links
}
%----------------------------------------------------------------------------------------------------%
\geometry{
    letterpaper,
    left = 1.0in,
    right = 1.0in,
    top = 1.0in,
    bottom = 1.4in
    %bottom = 1.5in
}
%\hyphenation{example, pa-ra-me-ter} % Over-ride Latex hyphenation, define hyphenated words
\hyphenpenalty=5000	% reduce hyphenation as much as possible
\tolerance=1000     % goes with the previous command
% Widow/orphan protection
\clubpenalty=10000    % Minimize orphans orphans(eliminate 10000)
\widowpenalty=10000   % Minimize widows
\brokenpenalty=10000  % Do not allow hyphen across pages
% Use cool footnotes
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\raggedbottom
\pagestyle{plain}

\renewcommand{\bibname}{\normalsize \rm REFERENCES}  % for the report or book class


\renewcommand{\@makechapterhead}[1]{%
  \vspace*{0.5in }%
  \vspace*{-0.05in}
	\begin{center}
	CHAPTER \thechapter
	\mbox{} \\
	\uppercase{#1}
	\mbox{} \\
	%\mbox{} \\
	\end{center}
}
\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{0.5in }%
  \vspace*{-0.05in}
	\begin{center}
	\uppercase{#1}
	\mbox{} \\
	%\mbox{} \\
	\end{center}
}

%\renewcommand\chapter{\@startsection {section}{1}{\z@}%
%	{-3.5ex \@plus -1ex \@minus -.2ex}%
%	{2.3ex \@plus.2ex}%
%	{\uppercase}}

\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\normalsize}}

\renewcommand\subsection{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\normalsize\centering}}

\renewcommand{\contentsname}{\vspace*{-0.06in}\begin{center}\textmd {\normalsize TABLE OF CONTENTS}\end{center}\vspace*{-0.18in}} %center the table of contents header, change it to table of contents, and make it the normal font size.
\renewcommand{\listfigurename}{\vspace*{-0.25in}\begin{center}\textmd{\normalsize LIST OF FIGURES}\end{center}\vspace*{-0.18in}}
\renewcommand{\listtablename}{\vspace*{-0.06in}\begin{center}\textmd{ \normalsize LIST OF TABLES}\end{center}\vspace*{-0.18in}}
\renewcommand{\bibname}{\vspace*{0.12in}\begin{center}\textmd{\normalsize REFERENCES}\end{center}\vspace*{-0.18in}}
%\renewcommand{\nomname}{\begin{center}\normalsize LIST OF SYMBOLS \end{center}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeTitlePage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeTitlePage} {
  %\thispagestyle{empty}
    \vspace*{0.42in}
    \vspace*{-0.04in}
  %\begin{spacing}{1.5}
  \begin{spacing}{2.0}
    \begin{center}
        \@title%
        \vfill
        \vspace*{0.5in}
        By \\
        \@author
        \vfill
        %\vspace*{1.5in}
    \end{center}
  \end{spacing}

  \begin{spacing}{1.0}
    \begin{center}
        \rm
        \ifnum\@documentID=\thesisID {
          A Thesis Submitted to the Faculty of the University\\
          of Tennessee at Chattanooga in Partial\\
          Fulfillment of the Requirements of the\\
          Degree of Master of Science:\\
          Engineering\\
        } \else {
            A Dissertation

            Presented for the

            \@degree
        } \fi
      \vspace*{24pt}
      \@university \\
      Chattanooga, Tennessee \\
      \vspace*{12pt}
      \@graduationMonth\ \@copyrightYear
      \vspace*{1.0in}
    \end{center}
  \end{spacing}
  \cleardoublepage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		makeApprovalPage: this macro will make the approval page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\makeApprovalPage} {
  \thispagestyle{empty}
  \vspace*{0.6in}
  \vspace*{-0.04in}
  \begin{centering}
    \begin{spacing}{2.0}
      \@title\\
    \end{spacing}
    \vspace{5pc}
    By\\
    \vspace{12pt}
    \@author\\
    \vspace{12pt}
  \end{centering}
  % good
  \noindent\hspace*{6pt}\\
  \begin{spacing}{1.0}
  \vspace*{0.5pc}
  \begin{center}
    \begin{tabular}[H]{l l}
      \hspace*{0.5in}\\[2pt]
      \@committeeMemberA                         & \@committeeMemberB\\[2pt]
      Director, Civil Infrastructure        & Department Head and Professor of  \\[2pt]
	Laboratory \& Research       & Mechanical Engineering \\[2pt]
      \@committeeMemberRoleA    & \@committeeMemberRoleB \\[4pc]
      \hspace*{0.5in} &
      \hspace*{0.5in}\\[2pt]
      \@committeeMemberC                        &\\[2pt] % \@committeeMemberD\\[2pt]
      \@committeeMemberTitleC      &\\[2pt] % Dean of the College of Engineering and\\[2pt]
      \@committeeMemberRoleC                         &\\[4pc] % Computer Science \\[4pc]
      \hspace*{0.5in} &
      \hspace*{0.5in}\\[2pt]
      \\[2pt] %\@viceProvost                              & \\[2pt]
      \\[2pt] %Dean of the Graduate School                & \\[2pt]
    \end{tabular}
  \end{center}
  \end{spacing}
    %\noindent We have read this \@theDocumentType
    %\newline  and recommend its acceptance:
    %      \addCommitteeMember{\@committeeMemberA}
    %      \addCommitteeMember{\@committeeMemberB}
    %      \ifnum\@numberOfCommitteeMembers>2
    %          \addCommitteeMember{\@committeeMemberC}
    %      \fi
    %      \ifnum\@numberOfCommitteeMembers>3
    %          \addCommitteeMember{\@committeeMemberD}
    %      \fi
    %      \ifnum\@numberOfCommitteeMembers>4
    %          \addCommitteeMember{\@committeeMemberE}
    %      \fi
    %      \vfill
    %      {\noindent \hspace*{2.65in}Accepted for the Council:
    %      \\[20pt]
    %    \hspace*{2.65in}\underline{\hspace*{2.5in}}
    %      \newline
    %\hspace*{2.65in}\@viceProvost
    %      \\[6pt]
    %\hspace*{2.6in} Dean of the Graduate School}
  \pagebreak%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\addCommitteeMember}[1] {
	\vspace*{.3in}%
    \newline%
	\underline{\hspace*{2.5in}}%
	\\[8pt]%
	\noindent #1%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand{\thesubfigure}      % Make subfigures numbered instead of lettered
%{\thefigure.\arabic{subfigure}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\addCommitteeMemberETD}[1] {
    \vspace*{.25in}%
    \newline%
	\noindent #1%
    \\[-8pt]%
	\underline{\hspace*{2.5in}}%
    \newline%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeAppendixPage}{
    % \newpage
    % \vspace*{3.5in}
    % %\begin{center}\Huge \bf{Appendix} \end{center}
    % \begin{center}\normalsize \doublespacing  \rm{APPENDIX A \\APPENDIX STUFF} \end{center}
    % \newpage
    \renewcommand{\@makechapterhead}[1]{%
      \vspace*{3in }%
    	\begin{center}
        \singlespacing
        \rm
      	APPENDIX \thechapter
      	\mbox{} \\
        \mbox{} \\
        \doublespacing
      	\uppercase{#1}
      	\mbox{} \\
      	%\mbox{} \\
    	\end{center}
    }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeBibliographyPage}{
    \newpage % create a new page for the bibliography title
    \addToTOC{REFERENCES} % add bibliography to table of contents
    \vspace*{0.2in} % move down the page 2.0 inches
    %\vspace*{3in} % move down the page 2.0 inches
    \begin{center}{\normalsize REFERENCES}\end{center} % make the bibliography title
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addToTOC: macro that adds an entry to the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\addToTOC}[1] {
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{part}{#1}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addToPDFBookmarks: macro that adds a bookmark to the PDF file
%                   without including it in the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\addToPDFBookmarks}[3] {
	\cleardoublepage
	\phantomsection
	\pdfbookmark[#1]{#2}{#3}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeCopyrightPage: this macro will make the copyright page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\makeCopyrightPage} {
    %\thispagestyle{empty}
    \phantom{.}
    \vspace*{3in}
    \begin{center}
        Copyright \copyright\  \@copyrightYear  \\
        By \@author \\
        All Rights Reserved.
    \end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
