PATH=~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:/usr/local/bin:/usr/bin:/bin:/sbin

install: update software apt-repo update ghc cabal-install cabal-update

ghc:; sudo apt-get install -y ghc-7.10.3

cabal-install:; sudo apt-get install -y cabal-install-1.22

cabal-update:
	cabal update
	cabal install -y alex happy

update:; sudo apt-get update -y

software:; sudo apt-get install -y software-properties-common

apt-repo:; sudo add-apt-repository -y ppa:hvr/ghc
