FROM openjdk:11-stretch
LABEL AUTHOR="dalongrong"
LABEL EMAIL="1141591465@qq.com"
WORKDIR /
COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas
COPY webapi-0.0.1-SNAPSHOT.jar /webapi-0.0.1-SNAPSHOT.jar
COPY docker-entrypiont.sh /docker-entrypiont.sh
COPY honest-profiler/liblagent.so /opt/liblagent.so
RUN chmod +x /docker-entrypiont.sh
EXPOSE 8080 
ENTRYPOINT [ "/docker-entrypiont.sh" ]