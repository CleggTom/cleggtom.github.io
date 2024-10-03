bibtool -s -sort.format="%d(year)" ./_data/publications.bib > ./_data/publications_sorted.bib
pandoc ./_data/publications_sorted.bib -s -f biblatex -t markdown > ./_data/pubs.yml