FROM ubuntu AS build
WORKDIR /app
RUN apt update 
RUN apt install default-jre -y
RUN apt install maven -y
COPY . .
RUN mvn clean package

FROM scratch
WORKDIR /app
COPY --from=build /app/target/spring-boot-web.jar /app/
CMD ["java", "-jar", "spring-boot-web.jar"] 
