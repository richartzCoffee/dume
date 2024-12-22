cmake_minimum_required(VERSION 3.5)

project(HelloWorld)

# Definir flags de compilação
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++14")

# Definir o diretório de origem
set(source_dir "${PROJECT_SOURCE_DIR}/src")

# Buscar todos os arquivos .cpp dentro do diretório de origem
file(GLOB source_files "${source_dir}/*.cpp")

# Garantir que encontramos arquivos
if (NOT source_files)
    message(FATAL_ERROR "Nenhum arquivo fonte .cpp encontrado em ${source_dir}")
endif()

# Criar o executável
add_executable(HelloWorld ${source_files})
