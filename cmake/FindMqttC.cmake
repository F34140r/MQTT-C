# - Find libmqttc
# Find the native libmosquitto includes and libraries
#
#  MQTT_C_INCLUDE_DIR - where to find mosquitto.h, etc.
#  MQTT_C_LIBRARIES   - List of libraries when using libmosquitto.
#  MQTT_C_FOUND       - True if libmosquitto found.

if (NOT MQTT_C_INCLUDE_DIR)
  find_path(MQTT_C_INCLUDE_DIR mqtt.h)
endif()

if (NOT MOSQUITTO_LIBRARY)
  find_library(
    MQTT_C_LIBRARY
    NAMES mqtt_c)
endif()

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(
	MQTT_C_LIBRARY MQTT_C_INCLUDE_DIR)

message(STATUS "libmqttc include dir: ${MOSQUITTO_INCLUDE_DIR}")
message(STATUS "libmqttc: ${MOSQUITTO_LIBRARY}")
set(MQTT_C_LIBRARIES ${MOSQUITTO_LIBRARY})

mark_as_advanced(MQTT_C_INCLUDE_DIR MQTT_C_LIBRARY)
