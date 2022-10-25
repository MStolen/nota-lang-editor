# nota-lang-editor: A docker instance for editing [nota-lang](https://nota-lang.org "nota-lang homepage") documents

## Requirements

* **Docker** - To install docker, follow the [official documentation](https://docs.docker.com/engine/install/ "Install Docker").
* **Docker Compose** (optional) - Docker Compose makes running the program easier. If you installed Docker Desktop, then you already have Docker Compose. If you only installed the Docker CLI, then you need to [install the Compose Plugin](https://docs.docker.com/compose/install/linux/ "Install Docker Compose Plugin").

## Running the Editor

Download the project from Github

```bash
git clone https://google.com
```

Then navigate to the project directory before running the project with either Docker Compose or Docker.

### Using Docker Compose (Preferred)

To run the editor using Docker Compose, navigate to the project folder use the following command:

```bash
docker-compose up -d
```

Once your container is running, you can navigate your web browser to [localhost:8000](http://localhost:8000) to open the editor.

To shut down the container, run

```bash
docker-compose down -v
```

### Using Docker CLI

To run the editor using the Docker Command Line Interface (CLI), navigate to the project directory and run

```bash
docker build -t nota-lang-editor-image .

docker run --name nota-lang-editor \
-p 8000:8000 \
-v "$(pwd)"/src:/home/node/app \
-v /home/node/app/node_modules \
-d nota-lang-editor-image
```

The `-v /home/node/app/node_modules` argument isn't strictly needed since there are no local docker modules, but it is best practice in case you add any non-global modules to the dockerfile later.

To shut down the container, you can run

```bash
docker stop nota-lang-editor
```

## Editing the Document

To edit the document, you can type the special Markdown-Javascript hybrid that Nota uses in the field on the left and use **CTRL-S** (Or **CMD-S** on Mac) to save the document (as **index.nota**) and update the live viewer on the right.

## License

The k
