cmake_minimum_required(VERSION 3.10)

# Устанавливаем имя проекта
project(MatrixLib)

# Указываем стандарт языка C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Добавляем исходные файлы библиотеки
add_library(MatrixLib STATIC
    matrix_operations.cpp
)

# Указываем путь к заголовочным файлам
target_include_directories(MatrixLib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Указываем директорию для установки библиотеки и заголовочных файлов
install(TARGETS MatrixLib ARCHIVE DESTINATION lib)
install(FILES matrix_operations.h DESTINATION include)
