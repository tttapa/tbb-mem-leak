cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
project(tbb-mem-leak)

################################################################################

set(TBB_DIR ${CMAKE_CURRENT_LIST_DIR}/lib/tbb/cmake)
include(${TBB_DIR}/TBBBuild.cmake)
tbb_build(TBB_ROOT ${CMAKE_CURRENT_LIST_DIR}/lib/tbb CONFIG_DIR TBB_DIR)
find_package(TBB REQUIRED)

################################################################################

add_executable(main main.cpp)
target_link_libraries(main TBB::tbb)