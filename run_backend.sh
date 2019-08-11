#!/usr/bin/env bash

echo "Building Web Server"
cd matching_server
./gradlew shadowJar
cd ..
cp matching_server/build/libs/*.jar ./server.jar

echo "Building Algorithms (C++)"
cd seminar_assignment_cpp
cmake -H. -Bbuild
$ cmake --build build -- -j3
cd ..
cp seminar_assignment_cpp/build/seminar_assignment .

java -jar *.jar