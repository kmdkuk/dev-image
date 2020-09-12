FROM ubuntu:focal

WORKDIR /root
RUN apt-get update && \
  apt-get install -y git neovim tmux zsh curl wget hub

COPY MyDotFiles MyDotFiles
RUN  cd MyDotFiles && \
  ./setup.sh && \
  ./setup_prezto.sh; exit 0

RUN nvim -c "try | call dein#update() | finally | qall! | endtry" \
  -N -u .vimrc -U NONE -i NONE -V1 -e -s

CMD ["/usr/bin/zsh"]
