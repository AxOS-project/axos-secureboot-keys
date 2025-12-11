#!/bin/bash

openssl genrsa -out db.key 2048
openssl req -new -x509 -key db.key -out db.crt -days 36500 -subj "/CN=AxOS Secure Boot/"