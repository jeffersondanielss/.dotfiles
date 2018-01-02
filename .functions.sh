#!/bin/bash

find-process(){
 PROJECT=$1

 ps -aux | grep $PROJECT
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

open() {
  PROJECT=$1
  code ~/workspace/"$PROJECT"
  exit;
}
