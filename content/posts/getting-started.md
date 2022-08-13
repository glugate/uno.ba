---
title: "Getting Started with Uno"
date: 2022-08-13T01:00:10+02:00
draft: false
tags: ["go", "uno", "framework", "api"]
author: "Uno"
---

## Installation

Let's create new Go project:

```
mkdir uno-demo
cd uno-demo
go mod init github.com/glugate/uno-demo
```

Please replace "glugate" with your GitHub user. 

To install Uno , run the following command:

```go 
go get github.com/glugate/uno 
```

## Usage

Create main.go file just like you would for any other Go project:

```go
package main

import (
    "fmt"
)

func main() {
    fmt.Println("Hello Uno!")
}

```

We need a data source, so let's create a MySql database:

```bash
mysql -u root -p
```

```mysql
CREATE DATABASE uno_demo;
exit;
```

Create .env file at the root of your project with some initial contents:

```bash
APP_NAME=Uno Demo
APP_ENV=local
APP_LOG_LEVEL=0

# Server
ADDRESS=127.0.0.1
PORT=9090

# MySql
DB_DRIVER=mysql
DB_DSN="root:root@tcp(127.0.0.1:3306)/uno_demo?parseTime=true"
```

Now that we have a database, let's create some migrations:

```bash
mkdir db/migrations -p
nano db/migrations/000001_create_users_table.up.sql
```

Paste the following SQL:

```sql
CREATE TABLE IF NOT EXISTS users
	(
		`id`          INTEGER PRIMARY KEY AUTO_INCREMENT,
		`email`       VARCHAR(255) NOT NULL,
		`first_name`  VARCHAR(255) NOT NULL,
		`last_name`   VARCHAR(255) NOT NULL,
		`password`    VARCHAR(255) NOT NULL,
		`is_active`   BOOLEAN DEFAULT true,
		`created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
		`updated_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
	)
	
```

We will create one more migration to populate users table with some data:

```bash
nano db/migrations/000002_insert_users.up.sql
```

```sql
INSERT INTO users (`first_name`, `last_name`, `email`, `password`) VALUES ('John', 'Doe', 'john@example.com', 'password');
INSERT INTO users (`first_name`, `last_name`, `email`, `password`) VALUES ('Uno', 'Glugate', 'uno@example.com', 'password');	
```

These migrations will be ran whe the application initializes. 

Uno uses godotenv library to load environment variables from a file, so go ahead and install it:

```bash 
go get github.com/joho/godotenv
```

The usage of godotenv is very simple. Just add these lines at the beginning of your program:

```go
err := godotenv.Load()
if err != nil {
    panic(err)
}
```
Next time you call [LookupEnv](https://pkg.go.dev/os#LookupEnv), e.g. ```go os.LookupEnv("<YOUR_ENV_VAR>") ```
all your environment variables from .env file will already be loaded, and ready fro use.

Let's instantiate Uno. You can have multiple Uno applications instatiated, but usually you will need just one
(main application or microservice).

```go 
app := uno.NewUno() 
if err != nil {
    panic(err)
}
```

You can nor run 
```bash
go run .
```
To be continued...