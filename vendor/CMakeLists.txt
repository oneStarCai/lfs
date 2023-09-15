# --------------------------------------------------------------
#  lfs_vendor
#  
#  expects:
#    MODULE_NAME defined in the CMakeLists for the module
#
#  provides:
#    lfs/vendor.so
# --------------------------------------------------------------
set(target "${MODULE_NAME}_vendor")

include_directories(src)
file(GLOB CORE_SOURCES src/*.c)

add_library(${target} MODULE ${CORE_SOURCES})
#set_target_properties(${target}
#  PROPERTIES OUTPUT_NAME vendor
#  LINK_FLAGS ${PLAT_OBJ_FLAGS}
#  PREFIX ""
#  SUFFIX ".so"
#)  

set_target_properties(${target} PROPERTIES OUTPUT_NAME vendor)
#set_target_properties(${target} PROPERTIES LINK_FLAGS ${PLAT_OBJ_FLAGS})
set_target_properties(${target} PROPERTIES PREFIX "")
set_target_properties(${target} PROPERTIES SUFFIX ".so")

add_dependencies(${MODULE_NAME} ${target})

# --------------------------------------------------------------
#  install                                     
# --------------------------------------------------------------
install(TARGETS ${target}
  DESTINATION ${LUBYK_LIB}/lib/${MODULE_NAME}
)
add_dependencies(${MODULE_NAME} ${target})

# --------------------------------------------------------------
#  install                                     
# --------------------------------------------------------------
install(TARGETS ${target}
  DESTINATION ${LUBYK_LIB}/lib/${MODULE_NAME}
)
