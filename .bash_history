curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
sudo apt install git
sudo apt-get install git -y
Git init
/var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
Sudo apt update
sudo apt update
sudo apt install jenkins -y
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg   | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"   | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo apt install maven -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip
unzip awscliv2.zip
sudo ./aws/install
aws --version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip
unzip awscliv2.zip
sudo ./aws/install
aws --version
aws sts get-caller-identity
sudo aws sts get-caller-identity
sudo apt install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip
unzip awscliv2.zip
sudo ./aws/install
aws --version
sudo nano sampleapp
docker build -t demo-app 
docker build -t Sampleapp
docker build -t sampleapp
Sudo nano Dcokerfile
sudo nano Dockerfile
sudo nano sampleapp
sudo nano dockerfile
docker build -t demo-app
docker build -t dokcerfile
docker build -t demo-app
sudo nano Dockerfile
docker build -t demo-app
docker build -t Dcokerfile
dokcer buildx build
sudo nano Dockerfile.
docker build -t demo-app .
sudo nano Dockerfile.
docker pull openjdk:17-slim
sudo nano Dockerfile.
docker build -t demo-app .
sudo nano Dockerfile.
docker images
pwd
ls
cd sampleapp
cd
cd sampleapp
cd Docker.file
cd Dcokerfile.
cd dokcerfile
mkdir project-1
cd project-1
ls
pwd
/root/project1
cd projecct-1
pwd
/root/project1
/root/project-1
ls
mvn archetype:generate -DgroupId=com.demo -DartifactId=demoapp -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
ls
cd demoapp
ls
mvn clean package
ls target/
nano pom.xml
mvn clean package
nano pom.xml
mvn clean package
ls target/
ls
cat Dockerfile.
cat Dockerfile
/root/project-1/demoapp
sudo nano Dcokerfile.
ls
cat Dockerfile.
cat Dcokerfile
sudo cat Dcokerfile
docker build -t demo-app .
mv Dcokerfile. Dockerfile
ls
cat Dockerfile
docker build -t demo-app .
docker run -d -p 8080:8080 --name demo demo-app
docker run -d -p 8090:8080 --name demo demo-app
docker run -d -p 8090:8080 --name demo2 demo-app
docker ps
docker ps -a
docker logs demo2
naon pom.xml
sudo nano pom.xml
mvn clean package
ls
ls target/
docker build -t demo-app .
docker rm -f demo demo2
docker run -d -p 8090:8080 --name demo demo-app
docker ps
docker ps -a
sudo nano src/main/java/com/demo/App.java
mvn clean package
ls target/
docker build -t demo-app .
docker rm -f demo
docker run -d -p 8090:8080 --name demo demo-app
docker ps -a
docker logs demo
aws sts get-caller-identity
aws configure list
aws ecr create-repository   --repository-name demo-app   --region us-east-1
history
324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 324895814715.dkr.ecr.us-east-1.amazonaws.com
docker images
docker tag demo-app:latest 324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app:latest
docker images
docker push 324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app:latest
docker pull 324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app:latest
docker run -d -p 8090:8080 --name demo-ecr 324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app:latest
docker rm -f demo
docker run -d -p 8090:8080 --name demo-ecr 324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app:latest
docker rm -f demo-ecr
docker run -d -p 8090:8080 --name demo-ecr 324895814715.dkr.ecr.us-east-1.amazonaws.com/demo-app:latest
docker ps -a
docker logs demo-ecr
