if [ ! -d "publish" ]; then
  mkdir "publish"
fi

sudo docker run -it --volume $PWD:/build fj68/pandoc-latex-ja-linguistics-paper:latest "pandoc -t pdf -V classoption='pandoc' -V documentclass=bxjsarticle -V header-includes='\usepackage{gb4e}' --pdf-engine=xelatex --filter=pandoc-crossref --lua-filter pangb4e/pangb4e.lua $@ > publish/paper.pdf"

