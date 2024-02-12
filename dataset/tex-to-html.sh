docker run \
  -v "$(pwd)":/workdir -w /workdir \
  arxivvanity/engrafo engrafo tex-source/Philosophy.tex prereqs/htmls
