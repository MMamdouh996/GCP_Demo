# Google Cloud Platform

## Lab2-1
---

## 1- From Cloud console, create a VPC named “auto-vpc” with auto-mode enabled,
## How many subnets created?

![Lab2-1 q1.png ](Lab2-1-q1.png "Lab2-1 q1.png ")

---
![Lab2-1 q1.png ](Lab2-1-q1-1.png "Lab2-1 q1.png")

---
## 2- From Cloud console, create a VPC named “custom-vpc” with auto-mode disabled and create two subnets.

![Lab2-1 q2.png ](Lab2-1-q2.png "Lab2-1 q2.png")


## 3- Using gcloud tool list all available VPCs and list subnets of each VPC.
```bash
$ gcloud compute networks list
NAME        SUBNET_MODE  BGP_ROUTING_MODE  IPV4_RANGE  GATEWAY_IPV4
auto-vpc    AUTO         REGIONAL
custom-vpc  CUSTOM       REGIONAL
default     AUTO         REGIONAL
```
## 4- Block internet access from you VPC using firewall rules
![Lab2-1 q4.png ](Lab2-1-q4.png "Lab2-1 q4.png")

---
![Lab2-1 q4.png ](Lab2-1-q4-1.png "Lab2-1 q4.png")

---
## 5- Create a firewall rule to allow incoming SSH requests from internet to all instances in your vpc.

![Lab2-1 q5.png ](Lab2-1-q5.png "Lab2-1 q5.png")

## 6- Modify the previous firewall rule to allow only ssh requests coming through Google’s IAP servers.

![Lab2-1 q6.png ](Lab2-1-q6.png "Lab2-1 q6.png")

---




# **END of Lab 2.1**
