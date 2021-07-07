#прописать запуск yaml-файла
# docker install
utils:
	@sudo apt-get -y update
	@sudo apt-get -y upgrade
	@sudo apt-get install curl
	@sudo apt-get install apt-transport-https
	@sudo apt-get install ca-certificates
	@sudo apt-get install software-properties-common

#change ununtu on debianInception
docker:
	@curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	@sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	@sudo apt update
	@apt-cache policy docker-cesudo
	@sudo apt-get install docker-ce
	@sudo apt-get -y install pip
	@sudo pip install docker-compose
	@sudo usermod -aG docker $$(whoami)
	@su - $${USER}
	@id -nG


start


re


clean
