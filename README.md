# IDS Semantic Web course

Repository with resources and materials for the Semantic Web course given by the [Institute of Data Science](https://maastrichtuniversity.nl/ids) at Maastricht University.

> We recommend you to [fork the repository](https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/fork) if you want to make changes.

## Start JupyterLab

We will need to run Java using a [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) with Java kernel (see [IJava documentation](https://github.com/SpencerPark/IJava)), the easiest is to run a [Docker](https://docs.docker.com/get-docker) container with JupyterLab already prepared.

> Jupyter notebooks are usually used with Python or R applications, but they can be used with any programming language as long as a kernel as been implemented for this language.

### Run with Docker

[Use Docker](https://docs.docker.com/get-docker/) to run JupyterLab with Java in a container.

Clone this directory:

```bash
git clone https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb.git
cd UM_KEN3140_SemanticWeb
```

* On **Linux** and **MacOS**, start JupyterLab on http://localhost:8888 and share the current directory in the container:

```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/home/jovyan -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

> Your current directory is shared in `/home/jovyan` in the Docker container.

* The same command on **Windows**, the variable to share the current directory is different:

```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}:/home/jovyan -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

### Install the SPARQL kernel

Install the SPARQL kernel to run SPARQL notebooks, run this command locally or in the Docker container depending on your installation.

```bash
pip install sparqlkernel --user
jupyter sparqlkernel install --user
```

## Tools documentation

Links to documentation of the different tools used in the course:

* [OWLAPI documentation](https://github.com/owlcs/owlapi/wiki/Documentation)
* [Owlready2 documentation](https://owlready2.readthedocs.io/en/latest/)
* [rdflib documentation](https://rdflib.readthedocs.io/en/stable/)
* [Ontospy documentation](http://lambdamusic.github.io/Ontospy)
* Convert Jupyter Notebook to HTML slides:

```bash
jupyter nbconvert lab4-sparql/Lab4_SPARQL_demo.ipynb --to slides --output-dir docs
```

