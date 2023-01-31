# Google Cloud Platform

## Lab1-1
---
---
### 1.Explore Google Cloud Console.
### 2.Setup a billing method on your google account.
### 3.Create a GCP project.
### 4.Assign your billing account to your project.
### 5.Setup project budget.
### 6.Setup billing alerts.
### 7.Using cloud shell, list all projects and set default project.
```bash
mohamed_mamdouh1510@cloudshell:~ (mm-iti-cairo-2023)$ gcloud projects list
PROJECT_ID: mm-iti-cairo-2023
NAME: MM-ITI-Cairo-2023
PROJECT_NUMBER: 999550456219

PROJECT_ID: paula-iti
NAME: Paula-Iti
PROJECT_NUMBER: 143061662161

PROJECT_ID: pure-hue-375707
NAME: My First Project
```
### 8.Install and configure gcloud SDK on your pc.
1. Download the Google Cloud SDK package by running the following command
```bash
$ curl https://sdk.cloud.google.com | bash
```
2. Add the Cloud SDK distribution URI as a package source by running the following command
```bash
$ echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
```
3. Import the Google Cloud public key by running the following command:
```bash
$ sudo apt-get install apt-transport-https ca-certificates gnupg
$ curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
```
4. Update and install the Cloud SDK by running the following command:
```bash
$ sudo apt-get update && sudo apt-get install google-cloud-sdk
```
5. to initialize the SDK and set up your credentials.
```bash
$ gcloud init
```
6. to verfiy the installation of gcloud:
```bash
$ gcloud -v
Google Cloud SDK 414.0.0
alpha 2023.01.13
beta 2023.01.13
bq 2.0.84
bundled-python3-unix 3.9.16
core 2023.01.13
gcloud-crc32c 1.0.0
gsutil 5.18
```
### 9.List all projects using gcloud SDK and set default project
```bash
$ gcloud projects list
PROJECT_ID         NAME               PROJECT_NUMBER
mm-iti-cairo-2023  MM-ITI-Cairo-2023  999550456219
paula-iti          Paula-Iti          143061662161
pure-hue-375707    My First Project   885968190411
```
```bash
$ gcloud config set project mm-iti-cairo-2023
Updated property [core/project].
```

