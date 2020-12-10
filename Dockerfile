# openjdk:lastest 可从https://hub.docker.com/官方镜像仓库去查找你想要的镜像
FROM  openjdk:latest
COPY ./target/demo-0.0.1-SNAPSHOT.jar demo.jar
#JAVA_OPTS 是用来设置JVM相关运行参数的变量
ENV JAVA_OPTS=""
EXPOSE 9080
ENTRYPOINT ["java", "-jar", "demo.jar"]