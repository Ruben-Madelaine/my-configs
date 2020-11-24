# ===========  Install all my pakages  ===========
sudo apt update && sudo apt upgrade && sudo apt autoremove

pip3 install black
sudo snap install pycharm-community --classic

sudo apt install chromium-browser \
				 apt-transport-https \
				 ca-certificates \
				 curl \
				 gnupg-agent \
				 software-properties-common \
				 python3.9 \
				 tree \
				 i3 \
				 terminator \
				 git-all \
				 python3-pip \
				 unity-tweak-tool \
				 -y xclip

wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt install atom





curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world


wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt install sublime-text

sudo apt install gnupg

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt install brave-browser











curl -s https://dl-ssl.google.com/linux/linux_signing_key.pub.gpg | sudo apt-key --keyring /etc/apt/trusted.gpg.d/google-chrome-stable.gpg add -
echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome-stable.list
 

sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt install google-chrome-stable