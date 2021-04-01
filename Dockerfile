FROM tomcat:latest
RUN apt update
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/Vikas-tm/samplejavacode.git
RUN mvn package
EXPOSE 8080