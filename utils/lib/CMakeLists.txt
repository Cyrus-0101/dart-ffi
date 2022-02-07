cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(math_library VERSION 1.0.0 LANGUAGES C)
add_library(math_library SHARED math.c math.def)
add_executable(math_test math.c)

set_target_properties(math_library PROPERTIES
    PUBLIC_HEADER math.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "math"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Hex_Identity_ID_Goes_Here"
)