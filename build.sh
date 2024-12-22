#!/bin/bash


# Crie a pasta de build se ela não existir
mkdir -p build

# Execute o cmake para configurar o projeto e gerar os arquivos de build
cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles" ..

# Compile o projeto
cmake -S . -B ./build
cmake --build ./build
