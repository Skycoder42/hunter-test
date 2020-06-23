set(CMAKE_TOOLCHAIN_FILE "$ENV{EMSDK}/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake" CACHE PATH "")
set(CMAKE_EXECUTABLE_SUFFIX ".wasm.js" CACHE STIRNG "")
set(CMAKE_EXE_LINKER_FLAGS "-s WASM=1 -s EXPORTED_FUNCTIONS='[_main]' ${CMAKE_EXE_LINKER_FLAGS}" CACHE STIRNG "")
