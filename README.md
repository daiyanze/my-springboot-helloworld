# my-springboot-helloworld
Demo application with CI/CD

# Start without Docker
**<p style="color:crimson">!Build the project with Maven!</p>**
```shell
1. Build jar (maven)
$ mvn package

2. Run jar locally
$ java -jar target/*.jar

3. Open browser and access localhost:9908
http://localhost:9908

4. You shall see the greeting: "Hello World! This website is made with Docker."
```

# Start with Docker
**<p style="color:crimson">!Make sure that you have Docker properly installed on your machine!</p>**
```
# this command will build the application and run it locally
$ docker-compose up

then access localhost:9908
```