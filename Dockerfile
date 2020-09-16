FROM jbindinga/java-notebook

USER root
RUN pip install sparqlkernel && jupyter sparqlkernel install

USER jovyan
