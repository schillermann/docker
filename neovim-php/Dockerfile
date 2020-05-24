FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y wget neovim

RUN echo "root:docker" | chpasswd \
  && useradd -ms /bin/bash vim

WORKDIR /home/vim
USER vim
RUN wget https://github.com/junegunn/vim-plug/blob/master/plug.vim -P $HOME/.local/share/nvim/site/autoload/

CMD tail -f /dev/null