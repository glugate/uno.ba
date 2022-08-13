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
go mod init
```

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

Uno uses godotenv library to load environment variables from a file, so go ahead and install it:

```bash 
go get github.com/joho/godotenv
```

The isage of godotenv is very simple. Just add these lines at the beginning of your program:

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