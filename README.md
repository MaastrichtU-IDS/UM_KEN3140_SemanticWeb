# IDS Semantic Web course

This repository contains resources and materials for the Semantic Web course given by the [Institute of Data Science](https://maastrichtuniversity.nl/ids) at Maastricht University.

> We recommend you to [fork the repository](https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/fork) if you want to make changes.

## Run the notebooks

We will need to run Java code in jupyter notebooks with Java kernel (see [IJava documentation](https://github.com/SpencerPark/IJava)), the easiest is to run a [Docker](https://docs.docker.com/get-docker) container with JupyterLab and all requirements to run those notebooks already installed.

Once JupyterLab has been started browse to the different folders for the labs, read the instructions, and run the notebooks.

> Note: Jupyter notebooks are usually used with Python or R applications, but they can be used with any programming language as long as a kernel as been implemented for this language.

### Run on the DSRI

If you are working or studying at Maastricht University you can have access to the Data Science Research Infrastructure (DSRI). If you don't already have access to the DSRI you can [visit this page](https://maastrichtu-ids.github.io/dsri-documentation/docs/access-dsri).

You can easily start this repository in JupyterLab on the DSRI using the JupyterLab template in the Catalog. When you are requested to enter the parameters of your JupyterLab instance you can provide the URL of this repository (https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb) to be automatically cloned in JupyterLab. 

See the [documentation to start JupyterLab on the DSRI](https://maastrichtu-ids.github.io/dsri-documentation/docs/deploy-jupyter) for more details.

### Run locally with Docker

[Install Docker](https://docs.docker.com/get-docker/) to run JupyterLab with Java in a container. We use the Docker image defined at https://github.com/MaastrichtU-IDS/jupyterlab

To run the notebooks in this repository locally, first clone the directory:

```bash
git clone https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb.git
cd UM_KEN3140_SemanticWeb
```

* On **Linux** and **MacOS**, start JupyterLab on http://localhost:8888 and share the current directory in the container:

```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/home/jovyan/work -e JUPYTER_TOKEN=yourpassword ghcr.io/maastrichtu-ids/jupyterlab:latest
```

> Your current directory is shared in `/home/jovyan` in the Docker container.

* The same command on **Windows**, the variable to share the current directory is different:

```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}:/home/jovyan/work -e JUPYTER_TOKEN=yourpassword ghcr.io/maastrichtu-ids/jupyterlab:latest
```

## Tools documentation

Some links to documentation of tools used in the course:

* [OWLAPI documentation](https://github.com/owlcs/owlapi/wiki/Documentation) (java)
* [rdflib documentation](https://rdflib.readthedocs.io/en/stable/) (python)
* [Owlready2 documentation](https://owlready2.readthedocs.io/en/latest/) (python)
* [Ontospy documentation](http://lambdamusic.github.io/Ontospy) (python)

Convert Jupyter Notebook to HTML slides:

```bash
jupyter nbconvert lab4-sparql/Lab4_SPARQL_demo.ipynb --to slides --output-dir docs
```

