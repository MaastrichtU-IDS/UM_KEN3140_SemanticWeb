#!/bin/bash

# Download the required jar files if you want to run the notebooks without the docker container

wget -q https://repo1.maven.org/maven2/net/sourceforge/owlapi/owlapi-distribution/5.1.19/owlapi-distribution-5.1.19.jar
wget -q https://repo1.maven.org/maven2/net/sourceforge/owlapi/org.semanticweb.hermit/1.4.5.519/org.semanticweb.hermit-1.4.5.519.jar
wget -q https://ftp.fau.de/eclipse/rdf4j/eclipse-rdf4j-3.6.3-onejar.jar
wget -q https://ftp.wayne.edu/apache/jena/binaries/apache-jena-4.1.0.tar.gz

tar -xf *.tar.gz
rm *.tar.gz