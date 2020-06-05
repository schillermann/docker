FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y \
  composer \
  ctags \
  git \
  neovim \
  php-curl \
  php-xml \
  wget

RUN echo "root:docker" | chpasswd \
  && useradd -ms /bin/bash vim

WORKDIR /home/vim
USER vim
COPY --chown=vim:vim init.vim .config/nvim/init.vim
COPY --chown=vim:vim README.md ./
RUN wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P $HOME/.local/share/nvim/site/autoload/
RUN composer global require friendsofphp/php-cs-fixer "squizlabs/php_codesniffer=*"

USER root
RUN ln -s /home/vim/.composer/vendor/friendsofphp/php-cs-fixer/php-cs-fixer /usr/local/bin/php-cs-fixer \
  && ln -s /home/vim/.composer/vendor/squizlabs/php_codesniffer/bin/phpcbf /usr/local/bin/phpcbf \
  && ln -s /home/vim/.composer/vendor/squizlabs/php_codesniffer/bin/phpcs /usr/local/bin/phpcs

USER vim
CMD tail -f /dev/null