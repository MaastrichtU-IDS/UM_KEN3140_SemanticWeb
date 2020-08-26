# Semantic Web course

Repository with resources for the Semantic Web course given by the Institute of Data Science at Maastricht University

It contains:

* A Jupyter Notebook to create and edit OWL ontologies using the OWLAPI  with Java (using a jupyter notebook Java kernel)
* A Jupyter Notebook to create and edit RDF using `rdflib`
* A Jupyter Notebook to create and edit OWL ontologies using `owlready2`
* A Docker image and docker-compose definition to run those Notebooks with all requirements easily

Additional documentations:

* [Owlready2 documentation](https://owlready2.readthedocs.io/en/latest/)
* [rdflib documentation](https://rdflib.readthedocs.io/en/stable/)
* [Ontospy documentation](http://lambdamusic.github.io/Ontospy)

### Start JupyterLab

Start JupyterLab with Java kernel installed locally from the root folder of the git repository:

```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/home/jovyan/work -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

> Shared in `/home/jovyan/work` in the container

On Windows use:

```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}:/home/jovyan/work -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

### Request a JupyterLab instance

If you cannot run JupyterLab with a Java kernel locally or using Docker, you can request a JupyterLab instance to be created on the UM [Data Science Research Infrastructure](https://maastrichtu-ids.github.io/dsri-documentation/). You will be able to access JupyterLab via a web UI accessible from the UM network (you might need to use the [VPN](https://vpn.maastrichtuniversity.nl/))

### See also

[WebVOWL](http://www.visualdataweb.de/webvowl/), d3.js graph viewer: 

http://www.visualdataweb.de/webvowl/#iri=https://raw.githubusercontent.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/master/ontologies/my_family_ontology.rdf
