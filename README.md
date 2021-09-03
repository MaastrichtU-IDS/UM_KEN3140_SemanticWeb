# IDS Semantic Web course

This repository contains resources and materials for the Semantic Web course given by the [Institute of Data Science](https://maastrichtuniversity.nl/ids) at Maastricht University.

Each lab is in a different folder.

Slides about the SPARQL query language are available here:

* [Introduction to SPARQL](https://maastrichtu-ids.github.io/UM_KEN3140_SemanticWeb/Lab4_SPARQL_demo.slides.html#/)
* [Advanced SPARQL](https://maastrichtu-ids.github.io/UM_KEN3140_SemanticWeb/Lab4_SPARQL_advanced.slides.html#/)

> We recommend you to [fork the repository](https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/fork) if you want to make changes, feel free to submit pull requests to improve the labs!

## Run the notebooks

You will need to run Java code in jupyter notebooks with Java kernel (see the [IJava kernel documentation](https://github.com/SpencerPark/IJava)), the easiest is to run a [Docker](https://docs.docker.com/get-docker) container with JupyterLab, and all requirements to run the notebooks already installed.

Once JupyterLab has been started browse to the different folders for the labs, read the instructions, and run the notebooks.

> Note: Jupyter notebooks are usually used with Python or R applications, but they can be used with any programming language as long as a kernel as been implemented for this language.

### Run on the DSRI

If you are working or studying at Maastricht University you can have access to the Data Science Research Infrastructure (DSRI). If you don't already have access to the DSRI you can [visit this page](https://maastrichtu-ids.github.io/dsri-documentation/docs/access-dsri).

You can easily start this repository in JupyterLab on the DSRI using the JupyterLab template in the Catalog. First create a project if you don't already have one. Use something like `workspace-lastname` for the name.

You can then go to the tab **+Add**, and click **From Catalog**, search for JupyterLab template in the Catalog (make sure the template checkbox is checked). When you are requested to enter the parameters of your JupyterLab instance you can provide the URL of this repository: `https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb` to be automatically cloned in JupyterLab. 

See the [documentation to start JupyterLab on the DSRI](https://maastrichtu-ids.github.io/dsri-documentation/docs/deploy-jupyter) for more details.

### Run locally with Docker

[Install Docker](https://docs.docker.com/get-docker/) to run JupyterLab with Java in a container. We use the Docker image defined at https://github.com/MaastrichtU-IDS/jupyterlab

To run the notebooks in this repository locally, open a Bash terminal, or PowerShell on Windows, and clone the directory:

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

### Run locally with conda

You can also locally install all the requirements directly on your laptop by following the different

Download iJava at https://github.com/SpencerPark/IJava/releases/download/v1.3.0/ijava-1.3.0.zip , unzip it and install it with:

```bash
python3 install.py --sys-prefix
```

You can check the `prepare.sh` file in the `bin` folder to find the command to download all Jars file required for the course

You can find the full file describing the commands  to build the Docker image in [this repository](https://github.com/MaastrichtU-IDS/jupyterlab/blob/main/Dockerfile)

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

