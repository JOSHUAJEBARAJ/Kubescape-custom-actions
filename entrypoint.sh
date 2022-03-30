#!/bin/sh
set -eax

kubescape --version 

# checking whether the threshold is empty or not 

if [-z "$2"]
then 
kubescape scan framework nsa $1 *.yaml 
else 
kubescape scan framework nsa $1 *.yaml -t $2 
fi 