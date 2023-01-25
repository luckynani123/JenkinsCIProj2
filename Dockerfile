FROM openjdk:8 AS ARTIFACT
RUN apt update -y && apt install maven -y
RUN git clone https://github.com/luckynani123/JenkinsCIProj2.git 
RUN cd JenkinsCIProj2 && mvn install



FROM tomcat:8-jre11
COPY --from=ARTIFACT JenkinsCIProj2/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ['catalina.sh', 'run'] 
