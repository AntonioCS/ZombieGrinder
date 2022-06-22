cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(zombie-grinder-thirdpart-libtheoraplayer CXX)

add_library(
    libtheoraplayer
    STATIC

    src/TheoraAsync.cpp
    src/TheoraAudioInterface.cpp
    src/TheoraAudioPacketQueue.cpp
    src/TheoraDataSource.cpp
    src/TheoraException.cpp
    src/TheoraFrameQueue.cpp
    src/TheoraTimer.cpp
    src/TheoraUtil.cpp
    src/TheoraVideoClip.cpp
    src/TheoraVideoFrame.cpp
    src/TheoraVideoManager.cpp
    src/TheoraWorkerThread.cpp
    src/Theora/TheoraVideoClip_Theora.cpp
    src/YUV/C/yuv420_grey_c.c
    src/YUV/C/yuv420_rgb_c.c
    src/YUV/C/yuv420_yuv_c.c
    src/YUV/libyuv/src/compare.cc
    src/YUV/libyuv/src/compare_common.cc
    src/YUV/libyuv/src/compare_gcc.cc
    src/YUV/libyuv/src/compare_neon.cc
    src/YUV/libyuv/src/compare_neon64.cc
    src/YUV/libyuv/src/compare_posix.cc
    src/YUV/libyuv/src/compare_win.cc
    src/YUV/libyuv/src/convert.cc
    src/YUV/libyuv/src/convert_argb.cc
    src/YUV/libyuv/src/convert_from.cc
    src/YUV/libyuv/src/convert_from_argb.cc
    src/YUV/libyuv/src/convert_jpeg.cc
    src/YUV/libyuv/src/convert_to_argb.cc
    src/YUV/libyuv/src/convert_to_i420.cc
    src/YUV/libyuv/src/cpu_id.cc
    src/YUV/libyuv/src/mjpeg_decoder.cc
    src/YUV/libyuv/src/mjpeg_validate.cc
    src/YUV/libyuv/src/planar_functions.cc
    src/YUV/libyuv/src/rotate.cc
    src/YUV/libyuv/src/rotate_argb.cc
    src/YUV/libyuv/src/rotate_mips.cc
    src/YUV/libyuv/src/rotate_neon.cc
    src/YUV/libyuv/src/rotate_neon64.cc
    src/YUV/libyuv/src/row_any.cc
    src/YUV/libyuv/src/row_common.cc
    src/YUV/libyuv/src/row_gcc.cc
    src/YUV/libyuv/src/row_mips.cc
    src/YUV/libyuv/src/row_neon.cc
    src/YUV/libyuv/src/row_neon64.cc
    src/YUV/libyuv/src/row_posix.cc
    src/YUV/libyuv/src/row_win.cc
    src/YUV/libyuv/src/scale.cc
    src/YUV/libyuv/src/scale_any.cc
    src/YUV/libyuv/src/scale_argb.cc
    src/YUV/libyuv/src/scale_argb_neon.cc
    src/YUV/libyuv/src/scale_common.cc
    src/YUV/libyuv/src/scale_gcc.cc
    src/YUV/libyuv/src/scale_mips.cc
    src/YUV/libyuv/src/scale_neon.cc
    src/YUV/libyuv/src/scale_neon64.cc
    src/YUV/libyuv/src/scale_posix.cc
    src/YUV/libyuv/src/scale_win.cc
    src/YUV/libyuv/src/video_common.cc
    src/YUV/libyuv/yuv_libyuv.c
    src/YUV/yuv_util.c

    # Misc Files
        src/YUV/libyuv/src/row_x86.asm
        src/YUV/libyuv/src/x86inc.asm
)

target_include_directories(libtheoraplayer
        PRIVATE include/theoraplayer
        PRIVATE src/YUV/libyuv/include
)
