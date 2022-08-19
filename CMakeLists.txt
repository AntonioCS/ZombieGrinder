cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
set(VCPKG_TARGET_TRIPLET x86-windows CACHE STRING "")

project(zombie-grinder)

set(CMAKE_CXX_STANDARD 11)


if (MSVC)
	#Having the project unicode is causing some problems
	#add_definitions(-D_UNICODE -DUNICODE)

	add_definitions(-DWIN32_LEAN_AND_MEAN -DNOMINMAX -DWINVER=0x0A00 -D_WIN32_WINNT=0x0A00)
	add_definitions(-D_CRT_SECURE_NO_DEPRECATE -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_DEPRECATE)
	add_definitions(-D_ATL_SECURE_NO_DEPRECATE -D_SCL_SECURE_NO_WARNINGS)

	#From the project
	add_definitions(-DWIN32 -D_HAS_ITERATOR_DEBUGGING=0 -D_SECURE_SCL=0)

	# object file does not define any previously undefined symbols
	add_compile_options(/wd4221)
	# nonstandard extension 'single line comment' was used
	add_compile_options(/wd4001)
	# 'xxx': unreferenced formal parameter
	add_compile_options(/wd4100)
	# 'xxx': conversion from 'int' to 'char', possible loss of data
	add_compile_options(/wd4244)
	# 'xxx': local variable is initialized but not referenced
	add_compile_options(/wd4189)
	# unreachable code
	add_compile_options(/wd4702)
	# nonstandard extension used: nameless struct/union
	add_compile_options(/wd4201)
	# declaration of 'token' hides previous local declaration
	add_compile_options(/wd4456)
	# declaration of 'name' hides class member
	add_compile_options(/wd4458)
	# function 'std::string Thread::Get_Name(void)' marked as __forceinline not inlined
	add_compile_options(/wd4714)
	# potentially uninitialized local variable 'opcode' used
	add_compile_options(/wd4701)
	# interaction between '_setjmp' and C++ object destruction is non-portable
	add_compile_options(/wd4611)
	# unreferenced local function has been removed
	add_compile_options(/wd4505)
	# conditional expression is constant
	add_compile_options(/wd4127)
	# 'argument': conversion from 'int' to 'DWORD', signed/unsigned mismatch
	add_compile_options(/wd4245)
	# signed/unsigned mismatch
	add_compile_options(/wd4389)
	# potentially uninitialized local pointer variable 'devices' used
	add_compile_options(/wd4703)
	# 'x': alignment of a member was sensitive to packing
	add_compile_options(/wd4121)
	# case '17' is not a valid value for switch of enum 'OnlineServer_Error::Type'
	add_compile_options(/wd4063)
	# 4005: 'AF_MAX': macro redefinition
	add_compile_options(/wd4005)
	# declaration of 'node' hides function parameter
	add_compile_options(/wd4457)
	# !=': logical operation on address of string constant
	add_compile_options(/wd4130)
	# flow in or out of inline asm code suppresses global optimization
	add_compile_options(/wd4740)
endif()

find_package(OpenGL REQUIRED)
find_package(glad CONFIG REQUIRED)
#find_package(imgui CONFIG REQUIRED)
#find_package(spdlog CONFIG REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR})

function(force_include target_name file_full_path)
	if (MSVC)
		set(COMPILE_OPTIONS /FI${file_full_path})
	else()
		set(COMPILE_OPTIONS	-include ${file_full_path})
	endif()

	target_compile_options(${target_name} PRIVATE ${COMPILE_OPTIONS})
endfunction()

function(add_steam_libs)
	add_library(steam_api SHARED IMPORTED)
	add_library(sdkencryptedappticket SHARED IMPORTED)

	set_target_properties(
			steam_api
			PROPERTIES
				IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/redistributable_bin/steam_api.dll
				IMPORTED_IMPLIB ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/redistributable_bin/steam_api.lib
	)
	set_target_properties(
			sdkencryptedappticket

			PROPERTIES
				IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/public/steam/lib/win32/sdkencryptedappticket.dll
				IMPORTED_IMPLIB ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk/public/steam/lib/win32/sdkencryptedappticket.lib
	)
endfunction()

include_directories(Source/)

add_subdirectory(ThirdParty)
add_subdirectory(Source)
