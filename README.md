## Creating and filling a Postgres DB with Docker Compose

This repository has a docker-compose file that creates tables and fills the tables in a Postgres database. The DDL and DML query's are found inside the sql/ folder

## ER Diagram
The ER Diagram of the DB:

<img width="809" alt="ER_Diagram" src="https://github.com/abdibedaso/Docker-Postgres-With-Data/blob/main/resource/ER_model.PNG">

## DB Variables
Set the variables in `sql/fill_tables.sql`
| Parameter | Description |
| ------ | ------ |
| number_of_users | Number of rows to create in the table users |
| number_of_coutries | Number of rows to create in the table country |
| number_of_cities | Number of rows to create in the table city |

## Params
If you want to change the postgres params head to in `docker-compose.yaml`
| Parameter | Description |
| ------ | ------ |
| POSTGRES_USER | The Postgres user to connect **postgres** |
| POSTGRES_PASSWORD | The Postgres password to connect **postgres** |
| POSTGRES_DB | The Postgres DB to create **postgres** |
| port | The port mapped by Postgres is **5432** in your container. In this example, use the port **5438** on the host machine |

## Run
```sh
$ docker-compose up
```