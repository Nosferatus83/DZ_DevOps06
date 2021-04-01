FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y
RUN git clone https://github.com/Vikas-tm/samplejavacode.git
RUN cd ./samplejavacode
RUN ./samplejavacode/mvn package
RUN cp ./target/addressbook.war %CATALINA_HOME%/webapps/
EXPOSE 8080
