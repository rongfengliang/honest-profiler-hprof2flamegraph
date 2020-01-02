#!/bin/sh
LOGPATH=/opt/logs
java \
-agentpath:/opt/liblagent.so=interval=1,logPath=${LOGPATH}/log.hpl \
-XX:+FlightRecorder \
-XX:+PreserveFramePointer \
-jar /webapi-0.0.1-SNAPSHOT.jar
