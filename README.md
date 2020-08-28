# Semantic Web course

Repository with resources for the Semantic Web course given by the Institute of Data Science at Maastricht University.

> We recommend you to [fork the repository](https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/fork) if you want to make changes.

It contains:

* A Jupyter Notebook to create and edit OWL ontologies using the OWLAPI  with Java (using a jupyter notebook Java kernel)
* A Jupyter Notebook to create and edit RDF using `rdflib`
* A Jupyter Notebook to create and edit OWL ontologies using `owlready2`
* A Docker image and docker-compose definition to run those Notebooks with all requirements easily

## Tools documentation

* [Owlready2 documentation](https://owlready2.readthedocs.io/en/latest/)
* [rdflib documentation](https://rdflib.readthedocs.io/en/stable/)
* [Ontospy documentation](http://lambdamusic.github.io/Ontospy)

## Start JupyterLab

We will need to run Java using a JupyterLab Java kernel, the easiest is to run a [Docker](https://docs.docker.com/get-docker) container with JupyterLab already prepared

### Install Docker

* Install Docker Desktop on MacOS, Linux, Windows **Pro/Enterprise/Education**: https://docs.docker.com/get-docker/

* Install Docker Desktop on **Windows Home** using WSL2: 

  * [Enable WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (Windows Subsystem for Linux)

  * [Install Docker Desktop](https://docs.docker.com/docker-for-windows/install-windows-home/) on Windows Home

  * You can also use [Chocolatey](https://chocolatey.org/) to install Docker on Windows Home without providing a DockerHub account:

    ```bash
    choco install docker-toolbox -ia /COMPONENTS="kitematic,virtualbox,dockercompose" -ia /TASKS="desktopicon,modifypath,upgradevm"
    ```

> On Windows, we strongly recommend you to use PowerShell or WSL2 (avoid the old CMD)

### Run with Docker

Clone this repository using [git](https://git-scm.com/):

```bash
git clone https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb.git
```

> See the [instructions to install git.](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) It can also be done from within JupyterLab once started.

Go to the cloned folder:

```bash
cd UM_KEN3140_SemanticWeb
```

On Linux and MacOS, this command will share the current directory to the container (to run in the Terminal at the root of the git repository):

```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/home/jovyan -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

> Shared in `/home/jovyan/work` in the container

The same command on Windows, the variable for the current directory is different:

```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}:/home/jovyan/work -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

### Request a JupyterLab instance on our servers

If you cannot run JupyterLab with a Java kernel locally or using Docker, you can request a JupyterLab instance to be created on the UM [Data Science Research Infrastructure](https://maastrichtu-ids.github.io/dsri-documentation/). 

You will be able to access JupyterLab via a web UI accessible from the UM network (you might need to use the [VPN](https://vpn.maastrichtuniversity.nl/))

Access your JupyterLab instance, open a **Terminal** window, and clone this repository:

```bash
git clone https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb.git
```

### See also

[WebVOWL](http://www.visualdataweb.de/webvowl/), d3.js graph viewer: 

http://www.visualdataweb.de/webvowl/#iri=https://raw.githubusercontent.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/master/ontologies/my_family_ontology.rdf
