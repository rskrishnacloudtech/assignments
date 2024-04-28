#!/bin/bash

timestamp=$(date -%F+%H+%M+%S)

srcDir=/home/winunix/folder1
destDir=/home/winunix/folder2

tar cvzf $destDir/backup-$timestamp.tar.gz $srcDir

