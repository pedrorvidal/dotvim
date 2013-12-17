dotvim
======
Instalação:

    git clone git://github.com/pedrorvidal/dotvim.git ~/.vim

Crie links simbólicos

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc (opcional)

Vá até o diretório `~/.vim` , inicialize e atualize os submódulos:

    cd ~/.vim
    git submodule init
    git submodule update

Atualizar todos os submódulos com um só comando:
    git submodule foreach git pull origin master


Mais instruções de instalação, uso e afins conforme o tutorial:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/


