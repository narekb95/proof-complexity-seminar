% LaTeX-Klasse für Seminar-Ausarbeitungen.
%
% Dateiname:   Ausarbeitung.cls
% Autor:       André Hernich, mit kleinen Modifikationen von Nicole Schweikardt
% Version vom: 11. Februar 2016
%
% Historie:
%  2010-Feb-18  erstellt
%  2010-Apr-28  Bemerkungen hinzugefügt
%  2010-May-5   einige kosmetische Änderungen
%  2016-Feb-11  einige kosmetische Änderungen
%
% Bemerkungen:
% ============
% - \maketitle erzeugt wie üblich den Titel und nutzt dabei die Informationen,
%   die mit \title{...}, \author{...} bzw. den folgenden Makros festgelegt
%   wurden:
%   - \seminar{...} legt den Namen des Seminars fest, z.B.
%     \seminar{Probabilistische Datenbanken}
%   - \semester{...} legt das Semester fest, z.B. \semester{WS 2007/08}
%   - \leitung{...} legt den Leiter bzw. die Leiterin des Seminars fest, z.B.
%     \leitung{Prof.\ Dr.\ Nicole Schweikardt}
%   - \universitaet{...} legt die Universität - wahlweise auch noch andere
%     Infos wie Institut usw. - fest, z.B. \universitaet{Humboldt-Universität
%     zu Berlin}
% - Standardpakete wie inputenc (mit der Option latin1, d.h. für ISO-8859-1
%   Kodierung), fontenc (für Type1-Fonts), lmodern, babel (mit neuer deutscher
%   Rechtschreibung), Mathematik-Pakete wie amsmath,amssymb,amsthm und
%   hyperref werden automatisch eingebunden.
% - Standard-Theoremumgebungen sind vordefiniert (satz,proposition,lemma,
%   korollar,vermutung,definition,notation,bemerkung,beispiel). Es gibt auch
%   unnummerierte Theoremumgebungen (satz*,proposition*,lemma*,korollar*,
%   vermutung*,definition*,notation*,bemerkung*,beispiel*). Beweise kann man
%   Wahlweise mit der Umgebung proof oder beweis setzen.
% - Am Ende der Klasse sind einige nützliche Makros definiert, die man nach
%   Belieben umdefinieren bzw. erweitern kann.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SeminarAusarbeitung}

\LoadClass[a4paper]{article}

% Seiteneinstellungen:

\RequirePackage[margin=3.25cm]{geometry}

% Standard-Pakete laden:

\RequirePackage[latin1]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[english]{babel}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{hyperref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Anpassen der Titel-Umgebung:

\def\@seminar{}
\newcommand{\seminar}[1]{\gdef\@seminar{#1}}
\def\@semester{}
\newcommand{\semester}[1]{\gdef\@semester{#1}}
\def\@leitung{}
\newcommand{\leitung}[1]{\gdef\@leitung{#1}}
\def\@institut{}
\newcommand{\institut}[1]{\gdef\@institut{#1}}
\def\@universitaet{}
\newcommand{\universitaet}[1]{\gdef\@universitaet{#1}}

\renewcommand{\maketitle}{%
\null%
\vspace{-2cm}%
\noindent\fbox{\parbox{0.978\textwidth}{
Ausarbeitung im Seminar\hspace*{5pt}\textit{\@seminar},\hspace*{5pt}\@semester \\
Leitung: \@leitung \\
\@institut,\hspace*{5pt}\@universitaet
}}
\vspace*{0.5cm}
  \begin{center}
    \LARGE
    \textbf{\@title}\\[1ex]
    \normalsize%\large
    by \\[2ex]
    {\Large \@author}
  \end{center}
  \bigskip
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Standard-Theorem-Umgebungen: nummeriert (ohne *) und unnummeriert (mit *)

\theoremstyle{plain}
\newtheorem{satz}{Satz}[section]
\newtheorem*{satz*}{Satz}
\newtheorem{proposition}[satz]{Proposition}
\newtheorem*{proposition*}{Proposition}
\newtheorem{theorem}[satz]{theorem}
\newtheorem*{theroem*}{Theorem}
\newtheorem{lemma}[satz]{Lemma}
\newtheorem*{lemma*}{Lemma}
\newtheorem{korollar}[satz]{Korollar}
\newtheorem*{korollar*}{Korollar}
\newtheorem{corollary}[satz]{Corollary}
\newtheorem*{corollary*}{Corollary}
\newtheorem{vermutung}[satz]{Vermutung}
\newtheorem*{vermutung*}{Vermutung}

\theoremstyle{definition}
\newtheorem{definition}[satz]{Definition}
\newtheorem*{definition*}{Definition}
\newtheorem{notation}[satz]{Notation}
\newtheorem*{notation*}{Notation}

\theoremstyle{remark}
\newtheorem{bemerkung}[satz]{Bemerkung}
\newtheorem*{bemerkung*}{Bemerkung}
\newtheorem{beispiel}[satz]{Beispiel}
\newtheorem*{beispiel*}{Beispiel}

\let\beweis=\proof
\let\endbeweis=\endproof

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nützliche Definitionen

% Zahlenmengen
\newcommand{\nat}{\mathbb{N}}
\newcommand{\natpos}{\nat_{\geq 1}}
\newcommand{\ganz}{\mathbb{Z}}
\newcommand{\rat}{\mathbb{Q}}
\newcommand{\reell}{\mathbb{R}}
\newcommand{\kplx}{\mathbb{C}}

% Mengen
\newcommand{\union}{\cup}
\newcommand{\intersect}{\cap}
\newcommand{\pot}[1]{\operatorname{\mathcal{P}}({#1})}

% Logik
\newcommand{\bigland}{\bigwedge}
\newcommand{\biglor}{\bigvee}
\newcommand{\limplies}{\rightarrow}
\newcommand{\lequiv}{\leftrightarrow}

\endinput
