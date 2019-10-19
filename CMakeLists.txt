cmake_minimum_required(VERSION 3.11)
project(handy_rpc)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules")

include(ExternalProject)
include(GtestExternalProject)

#head file path
include_directories(SYSTEM ${GTEST_INCLUDE_DIR})

# demo_test
add_executable(demo_test src/tests/demo_test.cc)
add_dependencies(demo_test googletest_ep)
target_link_libraries(demo_test ${GTEST_STATIC_LIB} ${GTEST_MAIN_STATIC_LIB} ${GMOCK_MAIN_STATIC_LIB} pthread)
