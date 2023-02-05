# Google Cloud Platform

## Lab 4-1

## 1.Using gsutil
```bash
pip install gsutil
```
## – Create 3 buckets.
```bash
$ gsutil mb gs://mohamed-mamdouh-bucker-{2..4}
Creating gs://mohamed-mamdouh-bucker-2/...
Creating gs://mohamed-mamdouh-bucker-3/...
Creating gs://mohamed-mamdouh-bucker-4/...
```

## – Enable Versioning for them.
```bash
$ gsutil versioning set on gs://mohamed-mamdouh-bucker-{2..4}
Enabling versioning for gs://mohamed-mamdouh-bucker-2/...
Enabling versioning for gs://mohamed-mamdouh-bucker-3/...
Enabling versioning for gs://mohamed-mamdouh-bucker-4/...
```
```bash
$ gsutil versioning get gs://mohamed-mamdouh-bucker-{2..4}
gs://mohamed-mamdouh-bucker-2: Enabled
gs://mohamed-mamdouh-bucker-3: Enabled
gs://mohamed-mamdouh-bucker-4: Enabled
```
## – Upload a file into bucket-1 then copy it from bucket-1 into bucket-2 & bucket-3.
```bash
$ gsutil cp ./test1.txt gs://mohamed-mamdouh-bucker-2
Copying file://./test1.txt [Content-Type=text/plain]...
/ [1 files][    0.0 B/    0.0 B]                                                
Operation completed over 1 objects. 
```
```bash                                             
$ gsutil ls gs://mohamed-mamdouh-bucker-2
gs://mohamed-mamdouh-bucker-2/test1.txt
```
---
```bash
$ gsutil cp gs://mohamed-mamdouh-bucker-2/test1.txt gs://mohamed-mamdouh-bucker-3
Copying gs://mohamed-mamdouh-bucker-2/test1.txt [Content-Type=text/plain]...
/ [1 files][    0.0 B/    0.0 B]                                                
Operation completed over 1 objects.                                              
```
```bash
$ gsutil ls gs://mohamed-mamdouh-bucker-3
gs://mohamed-mamdouh-bucker-3/test1.txt
```
---
```bash
$ gsutil cp gs://mohamed-mamdouh-bucker-2/test1.txt gs://mohamed-mamdouh-bucker-4
Copying gs://mohamed-mamdouh-bucker-2/test1.txt [Content-Type=text/plain]...
/ [1 files][    0.0 B/    0.0 B]                                                
Operation completed over 1 objects.
```
```bash
$ gsutil ls gs://mohamed-mamdouh-bucker-4
gs://mohamed-mamdouh-bucker-4/test1.txt
```
## – Delete the file from bucket-1
```bash
$ gsutil delete gs://mohamed-mamdouh-bucker-2/test1.txt
Removing gs://mohamed-mamdouh-bucker-2/test1.txt...
/ [1 objects]                                                                   
Operation completed over 1 objects.
```
```bash                                              
mohamedmamdouh@MohamedMamdouh-PC:~/iti-newpart/GCP/Day4$ gsutil ls gs://mohamed-mamdouh-bucker-2
mohamedmamdouh@MohamedMamdouh-PC:~/iti-newpart/GCP/Day4$ 
```
## 2.Host a static website on a standard public GCS bucket
## 3.Deploy MySQL private instance and connect to it then create a new database.
![Lab2-2 q1.png](../Screenshots/lab4-1-q3-1.png "Lab2-2 q1.png")



```bash
$ mysql -h 10.3.0.5 -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 88
Server version: 8.0.26-google (Google)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```
```bash
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tester             |
+--------------------+
5 rows in set (0.01 sec)

mysql> 
```