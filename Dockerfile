FROM alpine:3.8

RUN apk update && \
  apk add --no-cache man \
    man-pages \
    mdocml-apropos \
    less \
    less-doc \
    fish \
    fish-doc \
    ruby \
    vim \
    vim-doc \
    curl \
    curl-doc \
    git \
    jq

ENV SHELL /usr/bin/fish
ENV PAGER less

WORKDIR /root/
RUN mkdir -p .vim/pack/qf/start && cd .vim/pack/qf/start && \
  git clone https://github.com/tpope/vim-sensible.git && \
  git clone https://github.com/tpope/vim-endwise.git && \
  git clone https://github.com/tpope/vim-commentary.git && \
  git clone https://github.com/ajh17/Spacegray.vim.git && \
  git clone https://github.com/vim-airline/vim-airline.git && \
  git clone https://github.com/vim-airline/vim-airline-themes.git && \
  git clone https://github.com/ntpeters/vim-better-whitespace.git && \
  git clone https://github.com/kien/ctrlp.vim.git && \
  git clone https://github.com/pangloss/vim-javascript.git && \
  git clone https://github.com/mxw/vim-jsx.git

ADD vimrc .vimrc

ENTRYPOINT ["fish"]
