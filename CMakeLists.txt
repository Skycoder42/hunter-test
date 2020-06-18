cmake_minimum_required(VERSION 3.14)

set(HUNTER_PACKAGES jsoncpp)

include(FetchContent)
FetchContent_Declare(SetupHunter GIT_REPOSITORY https://github.com/cpp-pm/gate)
FetchContent_MakeAvailable(SetupHunter)

project(hunter-test LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)
find_package(jsoncpp CONFIG REQUIRED)

message(STATUS "Using Qt5: ${Qt5_DIR}")

if(ANDROID)
    add_library(hunter-test SHARED
      main.cpp
      qml.qrc
    )
else()
    add_executable(hunter-test
      main.cpp
      qml.qrc
    )
endif()

target_compile_definitions(hunter-test
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(hunter-test
  PRIVATE Qt5::Core Qt5::Quick)

if(NOT ANDROID)
    install(TARGETS hunter-test)
endif()
