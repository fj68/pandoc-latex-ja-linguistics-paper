# Write a linguistics paper in markdown

## Features

- Markdown -> PDF by pandoc & latex
- Gloss by gb4e & pangb4e
- textlint (in the future, not supported currently)
- GitHub Actions / GitLab CI (in the future, not supported currently)

## Usage

```sh
git clone https://github.com/fj68/pandoc-latex-ja-linguistics-paper.git
# it is necessary to build docker image by yourself for now
sudo docker build -t fj68/pandoc-latex-ja-linguistics-paper
sh ./md2pdf.sh paper.md
```

Then, your pdf is in `publish/paper.pdf`.

In the future, the publishment process will be on GitHub Actions / GitLab CI and what you need will be just `git push` your markdown.

## Thanks

- [kannkyo/pandoc-latex-ja](https://hub.docker.com/r/kannkyo/pandoc-latex-ja)
- [gb4e](https://www.ctan.org/pkg/gb4e)
- [gunnarnl/pangb4e](https://github.com/gunnarnl/pangb4e)

