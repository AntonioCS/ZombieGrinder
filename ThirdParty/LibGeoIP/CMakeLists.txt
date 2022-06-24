cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(zombie-grinder-thirdpart-geoip)

add_library(
    LibGeoIP
    STATIC

    base64.cpp
    GeoIP.c
    GeoIP_depreciated.c
    GeoIPCity.c
    md5.c
    regionName.c
    timeZone.c
    base64.h
    GeoIP.h
    GeoIP_internal.h
    GeoIPCity.h
    global.h
    md5.h
    types.h
)

