# scala-docker-template
---
## Description
Simple template for docker-compose to build images for a play-java application. Application depends on a MySQL database and dependency is managed by sbt. 

---

## Instructions
- Naviagte to your project folder and package your project using:
```bash
$ sbt dist
```
- Find your packaged project in `yourApp/target/universal/`
- Move the packaged .zip project into the scala-docker-template folder. 
- In **docker-compose.yml** change the following to fit your application setup:
    * `MYSQL_ROOT_PASSWORD`
    * `MYSQL_DATABASE`
    * `MYSQL_USER`
    * `MYSQL_PASSWORD`
    * image name for your **scalaproject**
- In **Dockerfile** change the following to fit your application setup:
    *  `<yourProjectName>`
        - Change this to your packaged project name.
- Run docker-compose to build your image and deploy your container:
```bash
$ docker-compose up -d
```
