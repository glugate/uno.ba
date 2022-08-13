---
title: "Microservices with Golang: The benefits and how to get started"
date: 2022-08-13T15:00:10+02:00
draft: false
tags: ["go", "microservices", "api", "rest", "grpc"]
author: "Uno"
---

## Introduction

Golang has been around for several years, but it has only recently gained widespread recognition as an alternative to the more common languages like Python, PHP and Java.

In this article, we will examine why Golang has become so popular, and why it’s considered one of the best languages for building microservices.

## What are Microservices?

The history of microservice architecture is traced back to 1998 when computer scientist Dr. James Lewis pointed out that most large-scale software projects were difficult to manage because they were monolithic systems. He suggested splitting them into smaller components so that each one could be managed separately - these became known as microservices.

Today, most popular way of communication between clients and servers are REST and gRPC.
REST is based on HTTP protocol whereas gRPC works over Protobuf message passing system which can easily generate client code using the Proto compiler. REST API is a bit simpler than gRPC API but it has some limitations in comparison to gRPC.

These days, Google's services are going away from REST API in favor of gRPC due to its simplicity and speed.  With this approach, REST API will become less prevalent but still relevant for smaller projects. 

A major advantage of adopting gRPC is that the libraries required for communication between clients and servers are small and fast.

## Do you need Microservices?

If you're wondering if microservices are right for your project, it's important to first understand a little bit about the history of this architectural approach. Microservices have their roots in SOA, or service-oriented architecture. This is an approach to software development that has been around for decades. In recent years, however, there has been a shift away from monolithic applications towards smaller, more modular applications. This is where microservices come in.

If you expect your application to be rather small, than you should probably stick with monolytic architecture. 

## Choosing the technology stack

When it comes to microservices, one of the most important decisions is choosing the right technology stack. There are many different options out there, but Golang is a great choice for a number of reasons. 

First, it’s a very fast language which can be important when dealing with large amounts of data. Second, it has excellent built-in support for concurrency, which is essential for microservices. Third, it’s extremely portable so you can run your services on any platform. 

Finally, it's also open source which means that anyone can contribute to the language or help improve existing projects. All these factors make Golang an excellent choice for developing microservices!

## Getting the project setup and deployment strategies

One of the main benefits of using Golang for microservices is that it is a compiled language, which means that it is fast and efficient. Another benefit is that it is easy to use and read, making it a good choice for teams who are new to microservices.

There are a few choices when it comes to picking a hosting platform for your microservice. If you plan on running your services in production, which we highly recommend, then it is best to use Kubernetes or Docker Swarm.
 
These are both container orchestration platforms that will help you manage each of your services at scale. And both offer options for deployment such as blue/green deployments, canary releases and rollbacks, which make managing rolling updates simpler than doing them manually.

## Setting up monitoring

One of the most important aspects of setting up microservices is monitoring. This will help you identify issues early on and avoid any potential down time. There are a few different ways to set up monitoring, but we recommend using a tool like Prometheus.

Once you’ve set up Prometheus, it will start collecting metrics on all of your services. To visualize these metrics, we suggest using Grafana. This is a web-based dashboard builder that allows you to create visualizations for your services. This means that if something goes wrong in one of your microservices,you can identify it immediately instead of waiting for issues in other parts of your infrastructure.
 
Once you have everything set up correctly, a sudden dip in performance might be immediately apparent.

## Conclusion

We hope this guide has given you a better understanding of what microservices are and how Golang can be used to create them. Microservices have many benefits, including being easier to develop and deploy, more scalable, and more resilient. If you're considering using microservices in your next project, we encourage you to give Golang a try. Remember that the best way to learn is by doing.