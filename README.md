# SQL Joins Examples

Welcome to the SQL Joins Examples repository! This project provides a collection of SQL queries demonstrating various types of joins in relational databases. These examples will help you understand how to efficiently combine data from multiple tables.

## Setup and Running the MySQL Container

To get started with the SQL Joins Examples project, you'll need to set up a MySQL database using Docker. Follow the steps below to run the MySQL container:
**pull** the docker mysql image from the docker hub and run it. Before run need to start the docker container
to run docker , you need to run this command where the db-script file is present.
use this command, docker-compose up
### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your machine
- [Docker Compose](https://docs.docker.com/compose/install/) installed (optional, but recommended for managing multi-container setups)

### Docker Compose Configuration

We provide a docker-compose.yml file to simplify the setup of the MySQL container. Below is the configuration you can use:

```yaml


version: '3.8'
services:
  mysql_project_container:
    image: mysql
    network_mode: host
    environment:
      MYSQL_ROOT_PASSWORD: mysql
      TCP_PORT : 15000
      MYSQL_DATABASE: dep12_join_example
      MYSQL_PASSWORD: mysqlpassword
    volumes:
      - ~/project/joinexample:/var/lib/mysql