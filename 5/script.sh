#!/bin/sh
find_directories() {
    echo "Directories and sub-directories under $1, where size exceeds $2 byte size limit"
    find $1 -type d -size +$2c
}

#Example running the script, 1. argument is path, 2. argument is size limit in bytes
find_directories ./ 1

# Used sh since it is the default shell on many distributions 
# and for the purpose of this exercise sh capabilities were enough
