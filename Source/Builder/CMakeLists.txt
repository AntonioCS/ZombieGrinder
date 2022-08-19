project(zombie-grinder-source-builder)

find_package(libpng CONFIG REQUIRED)
find_package(ZLIB REQUIRED)
find_package(freetype CONFIG REQUIRED)
find_package(unofficial-libsquish CONFIG REQUIRED)
find_package(Vorbis CONFIG REQUIRED)
find_package(unofficial-theora CONFIG REQUIRED)
find_package(unofficial-libsquish CONFIG REQUIRED)

add_executable(
        Builder

        Main.cpp
        Main.h
        Builder/AssetBuilder.h
        Builder/AssetBuilderOptions.cpp
        Builder/AssetBuilderOptions.h
        Builder/AssetBuilderOptions.inc
        Builder/AssetBuilder.cpp
        Compilers/AssetCompiler.cpp
        Compilers/AssetCompiler.h
        Compilers/Atlases/AtlasCompiler.h
        Compilers/Atlases/AtlasCompiler.cpp
        Compilers/Audio/AudioCompiler.h
        Compilers/Audio/AudioCompiler.cpp
        Compilers/Fonts/FontCompiler.h
        Compilers/Fonts/FontCompiler.cpp
        Compilers/Languages/LanguageCompiler.h
        Compilers/Languages/LanguageCompiler.cpp
        Compilers/Layouts/LayoutCompiler.h
        Compilers/Layouts/LayoutCompiler.cpp
        Compilers/Maps/MapCompiler.h
        Compilers/Maps/MapCompiler.cpp
        Compilers/ParticleFX/ParticleFXCompiler.h
        Compilers/ParticleFX/ParticleFXCompiler.cpp
        Compilers/Raw/RawCompiler.h
        Compilers/Raw/RawCompiler.cpp
        Compilers/Scripts/ScriptCompiler.h
        Compilers/Scripts/ScriptCompiler.cpp
        Compilers/Shaders/ShaderCompiler.h
        Compilers/Shaders/ShaderCompiler.cpp
        Compilers/Video/VideoCompiler.h
        Compilers/Video/VideoCompiler.cpp

)

force_include(Builder ${CMAKE_SOURCE_DIR}/Source/Generic/Defines.h)

#add_steam_libs()

add_library(steam_api SHARED IMPORTED)
add_library(sdkencryptedappticket SHARED IMPORTED)

set_target_properties(
        steam_api
        PROPERTIES
        #IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/redistributable_bin/steam_api.dll
        IMPORTED_IMPLIB ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/redistributable_bin/steam_api.lib
)
set_target_properties(
        sdkencryptedappticket

        PROPERTIES
        #IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/public/steam/lib/win32/sdkencryptedappticket.dll
        IMPORTED_IMPLIB ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/public/steam/lib/win32/sdkencryptedappticket.lib
)

add_library(fmod SHARED IMPORTED)

set_target_properties(
        fmod
        PROPERTIES
        IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/Source/Generic/ThirdParty/FMod/Library/fmod.dll
        IMPORTED_IMPLIB ${CMAKE_SOURCE_DIR}/Source/Generic/ThirdParty/FMod/Library/fmod_vc.lib
)

target_include_directories(
        Builder
        PRIVATE
            ${CMAKE_SOURCE_DIR}/ThirdParty
            ${CMAKE_SOURCE_DIR}/ThirdParty/libtheoraplayer/include

            ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk

            ${CMAKE_SOURCE_DIR}/Source/Generic/ThirdParty/FMod
)

target_link_libraries(
        Builder

        PRIVATE
            Generic
            Engine
            XScript
            png
            ZLIB::ZLIB
            freetype
            LibGeoIP
            unofficial::libsquish::squish
            cryptocpp
            Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile
            unofficial::theora::theora unofficial::theora::theoradec unofficial::theora::theoraenc
            libtheoraplayer
            mongoose

            glad::glad

            steam_api
            sdkencryptedappticket
            fmod

            # WinSDK libs
            DbgHelp
            Rpcrt4
            Opengl32
            Glu32
            Imm32
            dinput8
            Xinput
            dxguid
            #https://docs.microsoft.com/en-us/windows/win32/winsock/creating-a-basic-winsock-application
            Ws2_32
)

set(OUTPUT_DIR "${CMAKE_SOURCE_DIR}/Binary/Builder")

set_target_properties(
        Builder

        PROPERTIES
            #ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
            #LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
            RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}
        #"${CMAKE_SOURCE_DIR}/Binary/Builder"
)

add_custom_command(
        TARGET Builder POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/redistributable_bin/steam_api.dll
            #https://stackoverflow.com/a/39284736/8715
            #${OUTPUT_DIR}/$<CONFIG>/steam_api.dll
            #${RUNTIME_OUTPUT_DIRECTORY}/$<CONFIG>/steam_api_1233333.dll
            #${CMAKE_SOURCE_DIR}/Binary/Builder/$<CONFIG>/steam_api.dll
            #$<TARGET_FILE_DIR:Builder> <-- use
            #From cpp slack
            $<TARGET_FILE_DIR:Builder>/steam_api.dll

        COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/public/steam/lib/win32/sdkencryptedappticket.dll
            $<TARGET_FILE_DIR:Builder>/sdkencryptedappticket.dll

        COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_SOURCE_DIR}/Source/Generic/ThirdParty/FMod/Library/fmod.dll
            $<TARGET_FILE_DIR:Builder>/fmod.dll
)