# Latex Template

for thesis, mostly German.


Basierend auf meiner eigenen Diplomarbeit, weiteren Abschlussarbeiten und unzähligen Skriptem, mein Standardtemplate für neue, Abgabewürdige Dokumente


## Features

* Sinnvoller Natbib Style
* awesome Syntaxhighlighting von Source Code mittels Pygments
* Glossar, Stichwortvz, etc alles konfiguriert
* Konfigurierter Druck für beidseitigen Druck
* makefile fuer gedankenlosen Build

## Requirements

pygments

```bash
apt-get install python-pygments
```

ordentliche Latexversion, z.B.

```bash
apt-get install textlive texlive-lang-german texlive-latex-extra
```

## Usage

* git clone
* make, sollte durchlaufen mit einem haufen Output, aber am ende ein main.pdf generieren. Falls nicht, fehlen noch Pakete
* von der main.tex ausgehend in die parts/main\_part.tex, diese enthaelt die Referenz auf die anderen Quelldateien fuer den Hauptteil.
* RTM/RTFM, z.B. http://code.google.com/p/minted/downloads/detail?name=minted.pdf

Syntax HL
```latex
\begin{listing}
\begin{rubycode}
class Array
  # method documentation
  def mean
    self.inject(:+) / self.count.to_f
  end
end

"strings"
\end{rubycode}
\label{lst:example}
\caption{Ruby method definition with beautiful syntax hl}
\end{listing}
```

Andere Code-Environments koennen definiert werden, siehe parts/partials/custom\_commands.tex


* Zitieren: Bibliography in bibo.bib eintragen und im Latex mittels ``\cite{key}`` oder ``\citep{key}`` (mit Klammern) aufrufen
* Glossar: Glossareintraege in parts/partials/glossar.tex definieren und dann im Text mittels ``\glossar{key}`` oder Plural ``\glossarpl{key}`` aufrufen.
* Stichwortverzeichnis: Normal, einfach mittels \index{Begriff} unsichtbare Tokens an den richtigen Stellen setzen

