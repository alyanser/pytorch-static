cmake_minimum_required(VERSION 3.2)

project(stat)

list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../pytorch/build/")
set(ENV{TORCH_INSTALL_PREFIX} "${CMAKE_CURRENT_SOURCE_DIR}/../pytorch/build/install")

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(${PROJECT_NAME} example.cc)

target_include_directories(${PROJECT_NAME} PUBLIC ${TORCH_INCLUDE_DIRS})

target_link_libraries(${PROJECT_NAME} PUBLIC 
	${TORCH_LIBRARIES}
)
