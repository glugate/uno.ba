#!/bin/bash

git add .
git commit -m "sync"
git push
./uno deploy
