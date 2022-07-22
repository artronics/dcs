cmake_minimum_required(VERSION 3.22)
project(warthog)

set(CMAKE_CXX_STANDARD 14)
include_directories("C:/Program Files (x86)/Thrustmaster/TARGET/scripts")

add_executable(warthog
        warthog.tmc)
set_target_properties(warthog PROPERTIES LINKER_LANGUAGE CXX)
