cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(zombie-grinder-thirdparty-mongoose)

add_library(
    mongoose
    STATIC

    include/CivetServer.h
    include/civetweb.h

    src/CivetServer.cpp
    src/civetweb.c

    src/md5.inl
)

target_include_directories(
        mongoose
        PUBLIC ${CMAKE_SOURCE_DIR}/ThirdParty/mongoose
)



