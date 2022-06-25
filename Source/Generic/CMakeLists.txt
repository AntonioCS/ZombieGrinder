project(zombie-grinder-source-generic)

find_package(RapidJSON CONFIG REQUIRED)
find_path(RAPIDXML_INCLUDE_DIRS "rapidxml/rapidxml.hpp")
find_package(ZLIB REQUIRED)

add_library(
        Generic
        STATIC

        MemoryAllocator.h
        Defines.h

        Data/DataTransformer.h
        Data/DataTransformer.cpp
        Data/Hashes/CRC32DataTransformer.h
        Data/Hashes/CRC32DataTransformer.cpp

        Events/Delegate.h
        Events/Event.cpp
        Events/Event.h
        Events/Delegate.cpp

        Helper/CollisionHelper.h
        Helper/CommandLineParser.cpp
        Helper/CommandLineParser.h
        Helper/EndianHelper.cpp
        Helper/EndianHelper.h
        Helper/PersistentLogHelper.cpp
        Helper/PersistentLogHelper.h
        Helper/StringHelper.cpp
        Helper/StringHelper.h
        Helper/VectorHelper.h

        Math/Math.cpp
        Math/Random.cpp
        Math/Random.h
        Math/RectanglePacker.cpp
        Math/RectanglePacker.h
        Math/Math.h
        Math/Noise/Noise.h
        Math/Noise/NoiseSampler3D.cpp
        Math/Noise/NoiseSampler3D.h
        Math/Noise/SimplexNoise.cpp
        Math/Noise/SimplexNoise.h
        Math/Noise/Noise.cpp

        Memory/MemoryAllocator.cpp
        Memory/MemoryAllocator.h
        Memory/MemoryManager.cpp
        Memory/MemoryManager.h
        Memory/Memory.h
        Memory/Memory.cpp
        Memory/Linux/Linux_Memory.h
        Memory/Linux/Linux_Memory.cpp
        Memory/MacOS/MacOS_Memory.h
        Memory/MacOS/MacOS_Memory.cpp
        Memory/Win32/Win32_Memory.h
        Memory/Win32/Win32_Memory.cpp

        Patterns/Singleton.h
        Patterns/Singleton.cpp

        Profiling/ProfilingManager.h
        Profiling/ProfilingManager.cpp

        Stats/Stats.h
        Stats/Stats.cpp

        ThirdParty/FMod/Library
        ThirdParty/FMod/fmod_codec.h
        ThirdParty/FMod/fmod.h
        ThirdParty/FMod/fmod_dsp.h
        ThirdParty/FMod/fmod_dsp_effects.h
        ThirdParty/FMod/fmod_errors.h
        ThirdParty/FMod/fmod_output.h
        ThirdParty/FMod/fmod_common.h
        ThirdParty/FMod/fmod.hpp

        Threads/Fiber.cpp
        Threads/Fiber.h
        Threads/ConditionVariable.h
        Threads/ConditionVariable.cpp
        Threads/Mutex.cpp
        Threads/Mutex.h
        Threads/MutexLock.cpp
        Threads/Atomic.h
        Threads/Semaphore.cpp
        Threads/Semaphore.h
        Threads/Thread.cpp
        Threads/Thread.h
        Threads/ThreadLocalData.cpp
        Threads/ThreadLocalData.h
        Threads/ThreadPausePoint.cpp
        Threads/ThreadPausePoint.h
        Threads/ThreadSyncPoint.cpp
        Threads/ThreadSyncPoint.h
        Threads/MutexLock.h
        Threads/Linux/.vscode
        Threads/Linux/Linux_Atomic.cpp
        Threads/Linux/Linux_ConditionVariable.cpp
        Threads/Linux/Linux_ConditionVariable.h
        Threads/Linux/Linux_Fiber.cpp
        Threads/Linux/Linux_Fiber.h
        Threads/Linux/Linux_Mutex.cpp
        Threads/Linux/Linux_Mutex.h
        Threads/Linux/Linux_Semaphore.cpp
        Threads/Linux/Linux_Semaphore.h
        Threads/Linux/Linux_Thread.cpp
        Threads/Linux/Linux_Thread.h
        Threads/Linux/Linux_ThreadLocalData.cpp
        Threads/Linux/Linux_ThreadLocalData.h
        Threads/Linux/.vscode/.BROWSE.VC.DB-wal
        Threads/MacOS/MacOS_Atomic.cpp
        Threads/MacOS/MacOS_ConditionVariable.cpp
        Threads/MacOS/MacOS_ConditionVariable.h
        Threads/MacOS/MacOS_Fiber.cpp
        Threads/MacOS/MacOS_Fiber.h
        Threads/MacOS/MacOS_Mutex.cpp
        Threads/MacOS/MacOS_Mutex.h
        Threads/MacOS/MacOS_Semaphore.cpp
        Threads/MacOS/MacOS_Semaphore.h
        Threads/MacOS/MacOS_Thread.cpp
        Threads/MacOS/MacOS_Thread.h
        Threads/MacOS/MacOS_ThreadLocalData.cpp
        Threads/MacOS/MacOS_ThreadLocalData.h
        Threads/Win32/Win32_Atomic.cpp
        Threads/Win32/Win32_ConditionVariable.cpp
        Threads/Win32/Win32_ConditionVariable.h
        Threads/Win32/Win32_Fiber.cpp
        Threads/Win32/Win32_Fiber.h
        Threads/Win32/Win32_Mutex.cpp
        Threads/Win32/Win32_Mutex.h
        Threads/Win32/Win32_Semaphore.cpp
        Threads/Win32/Win32_Semaphore.h
        Threads/Win32/Win32_Thread.cpp
        Threads/Win32/Win32_Thread.h
        Threads/Win32/Win32_ThreadLocalData.cpp
        Threads/Win32/Win32_ThreadLocalData.h

        Traits/IsPointer.h
        Traits/Traits.cpp
        Traits/Traits.h
        Traits/IsPointer.cpp

        Types/AABB.cpp
        Types/AABB.h
        Types/Array.cpp
        Types/Array.h
        Types/ByteStack.cpp
        Types/ByteStack.h
        Types/CachedMemoryPool.h
        Types/Circle2D.cpp
        Types/Circle2D.h
        Types/CircleBuffer.h
        Types/Color.cpp
        Types/Color.h
        Types/DataBuffer.cpp
        Types/DataBuffer.h
        Types/EmbeddedLinkedList.h
        Types/FixedMemoryPool.cpp
        Types/FixedMemoryPool.h
        Types/Frustum.cpp
        Types/Frustum.h
        Types/HashTable.cpp
        Types/HashTable.h
        Types/IntVector3.cpp
        Types/IntVector3.h
        Types/Line2D.cpp
        Types/Line2D.h
        Types/LinkedList.h
        Types/Matrix4.cpp
        Types/Matrix4.h
        Types/MemoryHeap.cpp
        Types/MemoryHeap.h
        Types/Oval2D.cpp
        Types/Oval2D.h
        Types/Plane.cpp
        Types/Plane.h
        Types/PooledMemoryHeap.cpp
        Types/PooledMemoryHeap.h
        Types/Rect2D.cpp
        Types/Rect2D.h
        Types/Sphere.h
        Types/StackAllocator.cpp
        Types/StackAllocator.h
        Types/String.cpp
        Types/String.h
        Types/TemporalBufferedByteStack.h
        Types/ThreadSafeHashTable.cpp
        Types/ThreadSafeHashTable.h
        Types/UTF8String.cpp
        Types/UTF8String.h
        Types/Variant.cpp
        Types/Variant.h
        Types/Vector2.cpp
        Types/Vector2.h
        Types/Vector3.cpp
        Types/Vector3.h
        Types/Vector4.cpp
        Types/Vector4.h
        Types/VirtualArray3.cpp
        Types/VirtualArray3.h
)

target_link_libraries(Generic PRIVATE rapidjson)
target_include_directories(Generic PRIVATE ${RAPIDXML_INCLUDE_DIRS})
target_link_libraries(Generic PRIVATE ZLIB::ZLIB)

force_include(Generic ${CMAKE_CURRENT_SOURCE_DIR}/Defines.h)

add_library(fmod SHARED IMPORTED)
set_target_properties(fmod PROPERTIES
        IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/ThirdParty/FMod/Library/fmod.dll
        IMPORTED_IMPLIB ${CMAKE_CURRENT_SOURCE_DIR}/ThirdParty/FMod/Library/fmod_vc.lib
)
# TODO: platform detection

# ThirdParty/FMod/Library/fmod.dll
# ThirdParty/FMod/Library/fmod64.dll
# ThirdParty/FMod/Library/fmod64_vc.lib
# ThirdParty/FMod/Library/fmodL.dll
# ThirdParty/FMod/Library/fmodL64.dll
# ThirdParty/FMod/Library/fmodL64_vc.lib
# ThirdParty/FMod/Library/libfmod.a
# ThirdParty/FMod/Library/libfmod.dylib
# ThirdParty/FMod/Library/libfmod.so
# ThirdParty/FMod/Library/libfmodL.a
# ThirdParty/FMod/Library/libfmodL.dylib
# ThirdParty/FMod/Library/libfmodL.so

target_link_libraries(Generic PRIVATE fmod)
