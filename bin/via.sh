#!/bin/zsh

function via(){
    scp $1 lab:/tmp/$1
    $2 /tmp/$1
    scp /tmp/$3 ./
}
