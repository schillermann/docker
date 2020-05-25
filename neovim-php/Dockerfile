FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y git neovim wget

RUN echo "root:docker" | chpasswd \
  && useradd -ms /bin/bash vim

WORKDIR /home/vim
USER vim
COPY --chown=vim:vim init.vim .config/nvim/init.vim
RUN wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P $HOME/.local/share/nvim/site/autoload/

CMD tail -f /dev/null