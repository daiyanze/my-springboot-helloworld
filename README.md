# my-springboot-helloworld
Heroku demo application "Hello World" built with Travis CI/CD and Docker

This repository contains a minimalized example for spring boot application which integrates CI/CD and Docker.
It will help you go through the modernist deployment with some simple usage of Docker and Travis CI.
After the build completes, it will send messages to Teams channel.

# Dependencies
install the following stuff before you start
- java SDK (oraclejdk8/openjdk8)
- Maven
- Docker

# Folder Structure
```
├── Dockerfile
├── LICENSE
├── README.md
├── config
│   └── application.yml # your application configuration
├── docker-compose.yml # docker-compose will read this file
├── pom.xml # application dependency and setup
└── src # your source folder
    ├── main
    │   └── java
    │       └── hello
    │           ├── Application.java
    │           └── HelloController.java
    └── test
        └── java
            └── hello
                ├── HelloControllerIT.java
                └── HelloControllerTest.java
```

# Before Start
Clone the branch to your computer (Fork first is recommended).
And then install [Travis-CLI](https://github.com/travis-ci/travis.rb).

Use travis cli to encrypt your info
```shell
$ travis encrypt IMAGE_NAME="<your-dockerhub-repo>/<your-docker-image>"
Please add the following to your .travis.yml file:
  secure: "..."
$ travis encrypt HEROKU_API_KEY="<your-heroku-api-key>"
$ travis encrypt DOCKER_USER="<your-dockerhub-username>"
$ travis encrypt DOCKER_USER="<your-dockerhub-password>"
$ travis encrypt TEAM_CHANNEL_URL="<your-TEAMS-channel-url>"
```

The env configurations in .travis.yml file need to be replaced with the encrypted info.
```yml
# env:
#   global:
#     secure: IMAGE_NAME
#     secure: HEROKU_API_KEY
#     secure: DOCKER_USER
#     secure: DOCKER_PASS
#     secure: TEAM_CHANNEL_URL

# replace the following configurations
env:
  global:
    secure: <your own encryption>
    secure: ***
    secure: ***
    secure: ***
    secure: ***
```


# Start Locally
## I. Without Docker
```shell
1. Build jar (maven)
$ mvn package

2. Run jar locally
$ java -jar target/*.jar

3. Open browser and access localhost:9908
http://localhost:9908

4. You shall see the greeting: "Hello World! This website is made with Docker."
```

## II. With Docker
```shell
# This command will build the application and run it locally on port 9908
$ docker-compose up

# Access localhost:9908
http://localhost:9908

# Quit the application with Ctrl+C and command `$ docker-compose down`
# The following command will shut the app and remove the created container
$ docker-compose down
```

# Build with CI/CD
## I. Development
Simply use git and push your commits to github, it will trigger Travis to build the app
```
$ git add . && git commit -m "something changed"
$ git push
```

## II. Production
Commit your changes and tag the commit that you want to deploy to production environment
```
$ git add . && git commit -m "Release"
$ git tag v1.0.0
$ git push --tags
```

# Contribution
I welcome your PR. Make sure your codes are clean and tidy.

# LISENCE
Apache-2.0
