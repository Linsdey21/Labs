cmake_minimum_required(VERSION 3.10)

# Устанавливаем имя проекта
project(MatrixApp)

# Указываем стандарт языка C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Проверяем наличие библиотеки MatrixLib
find_library(MatrixLib NAMES MatrixLib PATHS ../MatrixLib/install/lib)

if (NOT MatrixLib)
    message(FATAL_ERROR "MatrixLib not found. Make sure it is installed in the correct directory.")
endif()

# Указываем путь к заголовочным файлам библиотеки
include_directories(../MatrixLib/install/include)

# Добавляем исходный файл приложения
add_executable(MatrixApp main.cpp)

# Линкуем приложение с библиотекой
target_link_libraries(MatrixApp ${MatrixLib})

# Указываем директорию для установки приложения
install(TARGETS MatrixApp RUNTIME DESTINATION bin)
