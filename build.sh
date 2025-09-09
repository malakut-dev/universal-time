#!/bin/bash

function print_ok { 
    echo -e " [\033[1;32mOK\033[0m] $1"
}

function print_info { 
    echo -e " [\033[1;33m!\033[0m] $1"
}

function print_header { 
    echo -e " [\033[1;34m+\033[0m] $1"
}

function print_info_2 { 
    echo -e " [\033[1;35m*\033[0m] $1"
}

print_header "Universal time calculator"
print_info "Version 1.0 - Multidimensional time analysis"
print_info "Calculate the age of the universe in different temporal scales"
print_info "Readme file: \033[1;32mREADME.md\033[0m to learn more about the project"
print_info_2 "\033[1;32mhttps://github.com/malakut-dev/universal-time\033[0m"
print_info_2 "Created by: Malak organization | Malakut Al-Hikmah \033[1;32mhttps://github.com/malakut-dev\033[0m"

print_info "Checking for dependencies..."

# Check if the program 'cmake' is installed
if ! command -v cmake &> /dev/null
then
    print_info "cmake is not installed. Install the program and try again."
fi

# Check if the program 'make' is installed
if ! command -v make &> /dev/null
then
    print_info "make is not installed. Install the program and try again."
fi

# Check if the program 'gcc' is installed
if ! command -v gcc &> /dev/null
then
    print_info "gcc is not installed. Install the program and try again."
fi

# Compile the C program
echo ""
rm -rf build
mkdir build
cd build
cmake ..
make
rm -rf ../bin
mkdir ../bin
cp universal_time ../bin
cp universal_time ../ 
echo ""

print_ok "run the program with \033[1;32m./universal_time\033[0m"
