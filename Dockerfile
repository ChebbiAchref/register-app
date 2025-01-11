FROM tomcat:latest

# Copie des fichiers du projet dans le répertoire webapps de Tomcat
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY /webapp/target/*.war /usr/local/tomcat/webapps

# Modifier le port dans le fichier server.xml en utilisant une commande sed
RUN sed -i 's/8080/8082/' /usr/local/tomcat/conf/server.xml

# Exposer le port 8082
EXPOSE 8082
