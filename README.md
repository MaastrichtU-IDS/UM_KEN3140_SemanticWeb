# Semantic Web course

Repository with resources for the Semantic Web course given by the Institute of Data Science at Maastricht University.

> We recommend you to [fork the repository](https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb/fork) if you want to make changes.

It contains:

* Documentation to install and run the JupyterLab environment with [Java kernel](https://github.com/SpencerPark/IJava) for the Semantic Web course.
* A Java Notebook to create and edit OWL ontologies using the [OWLAPI](https://github.com/owlcs/owlapi) 
* Python notebooks
  * create and edit RDF using `rdflib`
  * create and edit OWL ontologies using `owlready2`

## Start JupyterLab

We will need to run Java using a JupyterLab Java kernel (see [IJava documentation](https://github.com/SpencerPark/IJava)), the easiest is to run a [Docker](https://docs.docker.com/get-docker) container with JupyterLab already prepared.

### Install Docker

* Install Docker Desktop on MacOS, Linux, Windows **Pro/Enterprise/Education**: https://docs.docker.com/get-docker/

* Install Docker Desktop on **Windows Home** using WSL2: 

  * [Enable WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (Windows Subsystem for Linux)

  * [Install Docker Desktop](https://docs.docker.com/docker-for-windows/install-windows-home/) on Windows Home

  * You can also use [Chocolatey](https://chocolatey.org/) to install Docker on Windows Home without providing a DockerHub account:

    ```bash
    choco install docker-toolbox -ia /COMPONENTS="kitematic,virtualbox,dockercompose" -ia /TASKS="desktopicon,modifypath,upgradevm"
    ```

> On Windows, we strongly recommend you to use **PowerShell** or WSL2 (avoid the old CMD)

### Run with Docker

Create an new folder for your project, and go in this directory:

```bash
mkdir my-project
cd my-project
```

* On **Linux** and **MacOS**, this command will share the current directory to the container:

```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/home/jovyan -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

> Your current directory is shared in `/home/jovyan` in the Docker container.

* The same command on **Windows**, the variable for the current directory is different:

```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}:/home/jovyan -e JUPYTER_ENABLE_LAB=yes -e JUPYTER_TOKEN=YOURPASSWORD jbindinga/java-notebook 
```

### Request a JupyterLab instance on our servers

If you cannot run JupyterLab with a Java kernel locally or using Docker, you can request a JupyterLab instance to be created on the UM [Data Science Research Infrastructure](https://maastrichtu-ids.github.io/dsri-documentation/). 

You will be able to access JupyterLab via a web UI accessible from the UM network (you might need to use the [VPN](https://vpn.maastrichtuniversity.nl/))

Access your JupyterLab instance, open a **Terminal** window, and clone this repository:

```bash
git clone https://github.com/MaastrichtU-IDS/UM_KEN3140_SemanticWeb.git
```

## Tools documentation

Links to documentation of the different tools used in the course:

* [OWLAPI documentation](https://github.com/owlcs/owlapi/wiki/Documentation)
* [Owlready2 documentation](https://owlready2.readthedocs.io/en/latest/)
* [rdflib documentation](https://rdflib.readthedocs.io/en/stable/)
* [Ontospy documentation](http://lambdamusic.github.io/Ontospy)