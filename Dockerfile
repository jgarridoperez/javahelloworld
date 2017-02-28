FROM java:7

COPY src /home/root/javahelloworld/src

ENV FOO bar
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN ping 127.0.0.1 -c 30
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
