cmake_minimum_required(VERSION 3.12)
project(MQTT-C)

set(CMAKE_C_STANDARD 99)
find_package(OpenSSL REQUIRED) 

include_directories(include)

add_library (mqtt_c
	src/mqtt.c 
	src/mqtt_pal.c
	) 

target_link_libraries( mqtt_c 
	OpenSSL_LIBRARIES) 


set_target_properties(mqtt_c PROPERTIES PUBLIC_HEADER include/mqtt.h)
set_target_properties(mqtt_c PROPERTIES PUBLIC_HEADER include/mqtt_pal.h)

target_include_directories(mqtt_c PRIVATE .)

