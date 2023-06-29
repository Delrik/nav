function(copy_dir_after_build copy_target target)

    add_custom_command(TARGET ${target} POST_BUILD
       COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/${copy_target} ${CMAKE_CURRENT_BINARY_DIR}/${copy_target}
       COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/${copy_target} ${CMAKE_CURRENT_BINARY_DIR}/${copy_target}
    )
endfunction()
