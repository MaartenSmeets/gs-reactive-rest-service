mvn clean package

docker build -t spring-boot-openjdk -f Dockerfile.openjdk --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .
docker build -t spring-boot-oraclejdk -f Dockerfile.oraclejdk --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .
docker build -t spring-boot-openj9 -f Dockerfile.openj9 --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .
docker build -t spring-boot-graalvmce -f Dockerfile.graalvmce --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .
docker build -t spring-boot-zulu -f Dockerfile.zulu --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .

