# GKE, Istio, Atlas, RabbitMQ Demo

Project repository for my new post, [Deploy and Configure Istio on Google Kubernetes Engine (GKE)](https://programmaticponderings.com). The post demonstrates how to take a modern application, like the Voter API from previous posts, and optimize it for Google Kubernetes Engine (GKE). In addition to migrating to GKE, the Voter API will take advantage of MongoDB Atlas on GCP instead of Cosmos DB on Azure, and CloudAMQP's RabbitMQ on GCP instead of Azure Service Bus. This version is also designed for use with Istio v0.4.0 on GKE, which replaces the NGINX Ingress Controller.

Deployment resources and scripts are in `kubernetes\voter-api-atlas\` directory.

Sample vote, election, and candidate MongoDB documents may be created using the scripts found in the `sample_docs_scripts` directory.

Please read the post; it goes into details on using the resources in this GitHub repository.

![Architecture](pics/GKE_AMPQ_v1.png)
