# 1. Überblick  
Es handelt sich bei dieser App um eine sehr einfache Web-Applikation, die in Node.js geschrieben ist.
Diese wird mit Hilfe von Docker containerisiert, und läuft anschließend auf einem virtuellen One-Node-Kubernetes-Cluster (minikube).  
Das Besondere an dieser Applikation ist, dass sie Datenbankzugriff benötigt. Es handelt sich also um eine Stateful-Application.  
Die Datenbank ist aus Gründen der Datenausfallsicherheit nicht containerisiert, dennoch soll die Applikation unter Kubernetes laufen.  
  
# 2. Benötigte Pakete  
- express  
- nodemon  
- ejs  

# 3. Installation der Pakete  
- npm init  
- npm install --save --save-exact express  
- npm install --save --save-exact nodemon -g  
- npm install --save --save-exact ejs  

# 4. Datenbank  
Als Datenbank wird *mysql* verwendet.  
Hierzu sind anzulegen:  
- User: "testuser"  
- PW: "testuser"  
- Schema: "testuser"  
- Tabelle: "person"  

create table person(  
id int,  
lastname varchar(30),  
firstname varchar(30),  
country varchar(30),  
salary double  
)  

# 5. Startkommando  
- Dev-Mode: *nodemon*  
- Normal: *node app.js*


