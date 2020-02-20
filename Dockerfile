FROM gopherdata/gophernotes
MAINTAINER anisjonischkeit

RUN set -x && \
    go get github.com/leanovate/gopter/...

WORKDIR /home

CMD [ "jupyter", "notebook", "--no-browser", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''" ]
