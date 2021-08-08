%%
%% xkeyval-class.cls
%%
%% Xkeyval Test Class

%% Credentials
\def\fileversion{0.1}
\def\filedate{2021/07/09}

%% TeX format needed
\NeedsTeXFormat{LaTeX2e}[1995/06/01]

% Provides class
\ProvidesClass{xkeyval-class}[\filedate\space Version \fileversion\space xkeyval Test Class]

% Read in xkeyval
\RequirePackage{xkeyval}
% Read in xcolor
\RequirePackage{xcolor}

% parindent length from class options
\newlength{\temp@parindent}
\setlength{\temp@parindent}{15pt}
% Set landscape
\newif\iflandscape
% set text color
\def\temp@textcolor{black}

% Declare class options
\DeclareOptionX{landscape}{\ClassInfo{xkeyval-class}{Set to landscape}\landscapetrue}
\DeclareOptionX{parindent}[15pt]{\ClassInfo{xkeyval-class}{parindent set to #1}\setlength{\temp@parindent}{#1}}
\DeclareOptionX{color}[black]{\ClassInfo{xkeyval-class}{color set to #1}\def\temp@color{#1}}

% Print out unrecognized options ...
\DeclareOptionX*{\ClassError{xkeyval-class}{Invalid option '\CurrentOption'}{You entered an invalid class option. Please consult the documentation.}}
% ... or pass unknown options to the next class
%\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{article}}

% Process the options
\ProcessOptionsX\relax

% Now load class article
\LoadClass{article}

% Set the parindent length
\setlength{\parindent}{\temp@parindent}

% set color
\color{\temp@color}

\endinput