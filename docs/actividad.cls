\ProvidesClass{actividad}[2026/07/30 Custom Class for Actividad Individual]
\LoadClass[11pt,a4paper]{report}

% Paquetes requeridos
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,spanish,es-lcroman, es-tabla]{babel}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[scaled]{helvet} % Usa la fuente Helvetica, similar a Arial
\RequirePackage{setspace}
\RequirePackage[style=ieee]{biblatex}
\RequirePackage{xcolor}
\RequirePackage{etoolbox}
\definecolor{rojo}{RGB}{255,0,0}

\bibliography{bibliography}
\usepackage{csquotes}

\usepackage{caption}
\captionsetup{font=footnotesize}
\captionsetup{justification=centering}
\captionsetup[table]{position=bottom}

\usepackage{parskip}
\setlength{\parindent}{0pt}

% --- Capítulos continuos: se elimina el salto de página forzado antes de \chapter ---
\makeatletter
\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{\par\vspace{1.8em plus 0.5em minus 0.5em}}{}{}
\makeatother

\usepackage{titlesec}
\titleformat{\chapter}[block] % 'block' para que esté en la misma línea
  {\normalfont\fontsize{16pt}{16pt}\selectfont\bfseries} % Estilos de fuente para el título
  {Capítulo \thechapter.   } % Prefijo del título
  {0pt} % Espacio entre el prefijo y el título del capítulo
  {} % Antes del título
\titlespacing*{\chapter}{0pt}{12pt}{6pt}

\titleformat{\section}
  {\normalfont\fontsize{13pt}{13pt}\selectfont\bfseries}
  {\thesection}
  {1em}
  {}
\titlespacing*{\section}{0pt}{6pt}{4pt}

\usepackage{enumitem}
\setlist[itemize]{itemsep=0pt, parsep=0pt, label=\textbullet}

\addto\captionsspanish{ \renewcommand{\contentsname}{Índice general}}

% Configura la fuente predeterminada a sans-serif (Helvet/Arial)
\renewcommand{\familydefault}{\sfdefault}

% Configuraciones de geometría de la página
\geometry{left=3cm, right=3cm, top=1.3cm, bottom=1.8cm, includeheadfoot, headheight=40pt}

% Configuración de Fancyhdr para páginas regulares
\pagestyle{fancy} % Configura el estilo de página a "fancy"
    \fancyhf{} % Limpia el encabezado y pie de página
    \lhead{\begin{tabular}{p{9cm}}\vspace{0.05em}\fontsize{10.5pt}{13pt}\selectfont \Titulo{}\\[0.5em]\fontsize{10.5pt}{13pt}\selectfont \NombreAutor{}\vspace{0.45em}\end{tabular}} % Encabezado izquierdo con título y autor
    \rhead{\raisebox{-0.4\height}{\includegraphics[height=1cm]{imagenes/logo_ue.png}}} % Encabezado derecho con el logo
    \cfoot{\thepage} % Pie de página con el número de página
    \renewcommand{\headrulewidth}{0.7pt} % Establece el grosor de la línea del encabezado
    \setlength{\headheight}{57.53285pt} % Increase headheight

% Redefinir el estilo de página 'plain' para que coincida con 'fancy'
\fancypagestyle{plain}{
    \fancyhf{}
    \lhead{\begin{tabular}{p{9cm}}\vspace{0.05em}\fontsize{10.5pt}{13pt}\selectfont \Titulo{}\\[0.5em]\fontsize{10.5pt}{13pt}\selectfont \NombreAutor{}\vspace{0.45em}\end{tabular}}
    \rhead{\raisebox{-0.4\height}{\includegraphics[height=1cm]{imagenes/logo_ue.png}}}
    \cfoot{\thepage}
    \renewcommand{\headrulewidth}{0.7pt}
    \setlength{\headheight}{57.53285pt}
}

% Espaciado interlineal
\onehalfspacing
\setstretch{1.1}

% Configuración de la numeración y los títulos de figuras y tablas
\captionsetup[figure]{labelfont=bf, name=Figura, labelsep=period}
\captionsetup[table]{labelfont=bf, name=Tabla, labelsep=period}
