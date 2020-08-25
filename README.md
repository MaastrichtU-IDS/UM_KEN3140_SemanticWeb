# Semantic Web course

Repository with resources for the Semantic Web course given by the Institute of Data Science at Maastricht University

It contains:

* A Jupyter Notebook to create and edit RDF using `rdflib`
* A Jupyter Notebook to create and edit OWL ontologies using `owlready2`
* A Docker image and docker-compose definition to run those Notebooks with all requirements easily

Additional documentations:

* [Owlready2 documentation](https://owlready2.readthedocs.io/en/latest/)
* [Ontospy documentation](http://lambdamusic.github.io/Ontospy)

### Start JupyterLab

Start JupyterLab locally from the root folder of the git repository:

```bash
docker run --rm -it -p 8888:8888 -v $(pwd):/notebooks -e PASSWORD="<your_secret>" umids/jupyterlab:java
```

On Windows use

```powershell
docker run --rm -it -p 8888:8888 -v ${PWD}:/notebooks -e PASSWORD="<your_secret>" umids/jupyterlab:java
```

### See also

[WebVOWL](http://www.visualdataweb.de/webvowl/), d3.js graph viewer: 

http://www.visualdataweb.de/webvowl/#iri=https://raw.githubusercontent.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/master/ontologies/family.rdf
