# ===========  Configure the sources  ===========
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"


# ===========  Install all my packages  ===========
yes | sudo apt update && sudo apt upgrade && sudo apt autoremove

yes | sudo apt install chromium-browser \
			   apt-transport-https \
			   ca-certificates \
			   curl \
			   sublime-text \
			   flameshot \
			   fish \
			   zsh \
			   gnupg-agent \
			   software-properties-common \
			   python3.9 \
		  	   tree \
		  	   neofetch \
			   i3 \
			   terminator \
			   python3-pip \
		  	   unity-tweak-tool \
			   xclip \
		  	   git-all \
		  	   mysql-server\
		  	   docker-ce \
			   docker-ce-cli \
			   containerd.io \

pip3 install black
sudo snap install pycharm-community --classic

# ===========  Optional complementary packages  ===========
# termite #terminal
# 