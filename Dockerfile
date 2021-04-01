FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y
RUN git clone https://github.com/Vikas-tm/samplejavacode.git
ADD script_mvn.sh ./
RUN ./script_mvn.sh
RUN ls ./webapps
EXPOSE 8080
