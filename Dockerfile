FROM kannkyo/pandoc-latex-ja
MAINTAINER fj68

RUN apk update && apk add \
    wget

RUN wget --quiet http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh
RUN bash update-tlmgr-latest.sh --quiet

RUN tlmgr update --self --all
RUN tlmgr install \
    gb4e

CMD ["bash", "-c"]
