# LTTNG Analyses Env

This is an environment for using the LTTng analyses tool to analyze LTTng traces.

## Instructions

- Install Docker via [Getting Started with Docker](https://www.docker.com/get-started/)
- On a Mac, you may want to use [OrbStack](https://orbstack.dev) instead of Docker as it tends to be faster.
- From the terminal in this project directory, build and run the environment by running `docker-compose -f docker-compose.dev.yml up --build -d`.
- Run `docker ps` to see running containers and run `docker exec -it lttng-analysis-env-cli-1 bash` to run a bash shell in the running container.
- From the bash shell, use `lttng-analyses` commands as per the documentation at https://github.com/lttng/lttng-analyses.
- When you are done, run `docker-compose -f docker-compose.dev.yml down` to stop and remove containers, volumes, and images.
