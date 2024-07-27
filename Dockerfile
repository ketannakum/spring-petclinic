# We want to start with a Java image, so specify Anapsix’s Alpine Java image as our base image. 
FROM anapsix/alpine-java

#Specify who the maintainer of this image should be using a maintainer label.
LABEL maintainer="ketantnakum.com"

#Ensure the image has the Spring PetClinic on it so it can be run. When Spring PetClinic is built,
#the Jar will be placed in a target directory. We simply need to copy that into the image.
COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar

#Run Spring PetClinic when the container starts up.
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]