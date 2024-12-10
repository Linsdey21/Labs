# Папка установки
INSTALL_DIR = /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/install

# Папки для заголовочных файлов и библиотек
INCLUDE_DIR = $(INSTALL_DIR)/include
LIB_DIR = $(INSTALL_DIR)/lib

# Исходники и объектные файлы
SRC = matrix_operations.cpp
OBJ = obj/matrix_operations.o

# Компилятор и флаги
CXX = g++
CXXFLAGS = -Wall -std=c++17

# Имя библиотеки
LIBRARY = libMatrixLib.a

# Правила по умолчанию
all: $(LIB_DIR)/$(LIBRARY)

# Создание объектных файлов
$(OBJ): matrix_operations.cpp
	mkdir -p obj
	$(CXX) $(CXXFLAGS) -c matrix_operations.cpp -o $(OBJ)

# Создание статической библиотеки
$(LIB_DIR)/$(LIBRARY): $(OBJ)
	mkdir -p $(LIB_DIR) $(INCLUDE_DIR)
	ar rcs $(LIB_DIR)/$(LIBRARY) $(OBJ)

# Установка библиотеки и заголовочных файлов
install: $(LIB_DIR)/$(LIBRARY)
	# Копируем библиотеку, если она еще не существует в целевой директории
	if [ ! -f $(LIB_DIR)/$(LIBRARY) ]; then cp $(LIB_DIR)/$(LIBRARY) $(LIB_DIR); fi
	cp matrix_operations.h $(INCLUDE_DIR)

# Очистка
clean:
	rm -rf obj
	rm -f $(LIB_DIR)/$(LIBRARY)

# Удаление установленного
uninstall:
	rm -f $(LIB_DIR)/$(LIBRARY)
	rm -f $(INCLUDE_DIR)/matrix_operations.h
