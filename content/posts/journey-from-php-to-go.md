---
title: "Journey from PHP to Go"
date: 2022-08-12T18:00:56+02:00
draft: false
tags: ["php", "go"]
author: "Uno"
---

### Introduction

PHP is the most popular language in the world, but there are some features that can make it look dated. One such feature is its lack of static typing and errors at compile time. 

Golang solves this by introducing static typing with type inference and compile-time type checking. In this article we will explore how Go compares with PHP and why you should consider migrating from PHP to Go if you have not already done so!

### Why is Golang better than PHP?

If you're considering migrating your PHP application to Golang, this article will be helpful. It contains answers to the following questions:

 - Why is Golang better than PHP?
 - How can I migrate my PHP application to Golang?

Golang is a modern programming language which can be used for many different types of projects, including web applications and APIs (Application Program Interface). It's fast, stable and scalable; it has a simple syntax that makes learning easy; it's powerful enough for complex applications but still approachable by beginners with little experience in programming

### Errors in both languages

If you are coming from PHP, one of the first things you will notice is that Golang does not have a good standard for error handling.

The PHP way of returning errors from functions is to use the native error type and then throw an exception. This is implemented by defining the function as throwing an exception and then using it in your code:

```php
function foo() {

throw new Exception(“An error occurred in foo()”);

}
```

You can also use this method:

```php
function foo() { 
    $result = 2; if (2 == 0) {
         throw new Exception(“Must be zero!”); 
    } 
    return $result; 
}
```

### PHP has no static typing and does not check errors at compile time.

PHP has no static typing and does not check errors at compile time. This means that you are responsible for checking the return value of your functions or classes, and if they do not return an expected value, you must handle it yourself. You may also have to explicitly add error handling logic to your code if you wish to deal with any possible errors that can occur during execution.

Golang uses the native error type to return an error from a function:

```go
func GetUser(userID int) (*User, error) {...}

func main() { 
    user := GetUser(1)
    if err := user.(*User).GetEmail(); err != nil { 
        fmt.Println("Error getting email") 
    }
}
```

### PHP does not have a good standard for error handling.

In Golang, errors are returned as values. An error can be returned in form of an integer value or a string. When an error is returned as an integer, it means that the function has failed to execute its function and you can use this return value to determine if your program should stop execution or not. 

A string is used to represent specific error message that could help you understand what went wrong and how you can fix it in order for your program to continue running smoothly.

Golang uses the native error type for returning errors from functions or methods. You will also see this type used when trying out new things like testing code before writing a real implementation or unit testing different parts of your application independently (without using tests).

### Nullable data types in PHP vs Go

In PHP, you must check for null values when reading data from a database or inputting user input. If no value is returned by the database or user, then the variable becomes undefined and will contain the value NULL (or 0 in some cases).

Go does not have a concept of undefined variables. Any time you assign nil to a variable, it is set to an uninitialized state. This means that if you try to access an uninitialized variabl. 

For example, by trying to read its contents as if it contained something—you will get back nil instead of any valid data type. This can be useful because it allows Go developers to write code in which they know at compile time whether or not their variables are initialized. However, it also requires them to use extra lines of code when initializing their variables before using them.


### PHP arrays are associative and heterogeneous by nature.

PHP arrays are associative and heterogeneous by nature. PHP programmers know that unlike arrays in most modern programming languages, PHP arrays are not a first-class type in PHP. They aren't strongly typed either. Finally, they're not immutable (they can be modified after creation), nor are they type-safe.

### Golang uses nil to indicate uninitialized variables or missing map keys.

In Go, nil is a special value that indicates the absence of a value in Go. It's the only value of the built-in type interface{}.

In other words, nil is a valid value for any pointer type, including array, slice, map and channel. And it can be used to initialize pointers as well as unset an element:

```go
package main

import ( "fmt" )

func main() {
    let x := []string{"foo", "bar"} 
    fmt.Println(x) // prints [foo bar]
    contains := func(elem interface{}) bool { return elem == "foo" } 
    fmt.Println(contains(x)) // prints true  
    fmt.Println(len(x)) // prints 2  
    y := []string{"notfound"} 
    y = append(y[:0], "baz") 
    printSlice(&y) // Prints ["notfound"] 
}
```

### Try go today!

Go is a compiled language. It's fast, statically typed, and it has a great standard library.

Go is garbage collected. This makes it easy for you to get started without worrying about memory management, which is great for small projects like web applications or prototypes.

It has a great community that's active on Slack and Reddit (as well as IRC). If you have a question about Go or need help with something specific in the language itself there are people who can help!

The ecosystem around Golang includes things like Docker & Kubernetes which makes deploying your application simple as pie!

### Conclusion

If you’re looking to improve your development workflow and experience, you should definitely consider Go as an alternative to PHP. It’s a powerful language that’s easy to learn and use today.
