# Azure AKS, Service Bus, and Cosmos DB Demo

Project repository for my new post, [Architecting Cloud-Optimized Apps with AKS (Azure’s Managed Kubernetes), Azure Service Bus, and Cosmos DB)](https://wp.me/p1RD28-5EV). Post demonstrates how take a modern application, like the Voter API from previous posts, and optimize it for Kubernetes in the Cloud (Kubernetes-as-a-Service), in this case, AKS, Azure’s new public preview of Managed Kubernetes for Azure Container Service. In addition to migrating to AKS, the Voter API will take advantage of additional Azure’s resources, including Azure’s Service Bus and Cosmos DB, replacements for the Voter API’s RabbitMQ and MongoDB.

Deployment scripts are in `kubernetes\voter-api\` and `kubernetes\nginx-ingress\` directories.

Please read the post. The post goes into details on using the resources in this GitHub repository.

![Architecture](AKS-Voter-API-Architecture.png)

### Postscript
Added after the post was released, I added  an `kubernetes\voter-api-atlas\` version of the Voter API Kubernetes resources, designed for using MongoDB Atlas instead of Cosmos DB. The change involves the secrets used for the database connection strings.

Additionally, there is an `kubernetes\nginx-ingress-rbac\` version of the Kubernetes resources, which includes the NGINX Ingress Controller's RBAC code from their GitHuib repo. It is designed to be used with Istio on Google Cloud Platform.
