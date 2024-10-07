# bibtool -s -sort.format="%d(year)" ./_data/works.bib > ./_data/publications_sorted.bib
pandoc ./_data/works.bib -s -f biblatex -t markdown > ./_data/pubs.yml