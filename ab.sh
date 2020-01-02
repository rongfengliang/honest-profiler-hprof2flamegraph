#!/bin/sh

ab -c 10 -n 100000 http://localhost:8082/actuator/env


# ab -c 10 -n 100000 http://localhost:8082/actuator/beans