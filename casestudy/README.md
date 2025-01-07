
### Check version
```bash
java -version
```

```bash
/opt/tomcat/bin/catalina.sh version
```

### Run database
```bash
sudo systemctl start mysql
sudo systemctl status mysql
```

```bash
sudo service mysql restart
mysql -u root -p < ~/Documents/Backend_Projects/mobs/data/casestudy.sql
```

### Debug
```bash
chmod +x gradlew
```

```bash
sudo rm -rf /opt/tomcat/work/* && sudo ./gradlew clean build && sudo cp build/libs/casestudy-1.0-SNAPSHOT.war /opt/tomcat/webapps/casestudy.war && sudo /opt/tomcat/bin/shutdown.sh && sudo /opt/tomcat/bin/startup.sh
```

