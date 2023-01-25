FROM openjdk:8 AS ARTIFACT
RUN apt update -y && apt install maven -y
RUN git clone https://github.com/luckynani123/vprofile-project.git
RUN cd vprofile-project && mvn install



FROM tomcat:8-jre11
COPY --from=ARTIFACT vprofile-project/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

