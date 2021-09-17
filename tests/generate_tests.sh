#!/bin/sh

cat > docker-test.yaml <<EOF
version: '2'

services:
  mailman-core:
    image: maxking/mailman-core:rolling

  mailman-web:
    image: maxking/mailman-web:rolling
    environment:
    - SECRET_KEY=abcdefghijklmnopqrstuv
EOF
