#!/bin/bash

kubectl apply -f .\database-deploy.yml --record
kubectl apply -f .\app-deploy.yml --record
