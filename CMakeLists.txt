cmake_minimum_required(VERSION 3.24.4)

project(http_server)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

# source files for executeable
file(GLOB_RECURSE SOURCE_FILES "src/*.cpp" "src/*.hpp")



# make exectueable
add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/rarlibc/lib/librar_libc.a)
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/rarlibc/include)


