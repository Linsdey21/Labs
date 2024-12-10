# Папка установки библиотеки
LIB_DIR = /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/install/lib
INCLUDE_DIR = /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/install/include

# Папка с заголовочными файлами MatrixApp (где находится pch.h)
PCH_DIR = /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixApp

# Исходники и объектные файлы для MatrixApp
SRC = main.cpp
OBJ = obj/main.o

# Имя исполнимого файла
EXEC = MatrixApp

# Компилятор и флаги
CXX = g++
CXXFLAGS = -Wall -std=c++17 -I$(INCLUDE_DIR) -I$(PCH_DIR)

# Правила по умолчанию
all: $(EXEC)

# Компиляция основного приложения
$(EXEC): $(OBJ)
	$(CXX) $(CXXFLAGS) $(OBJ) -L$(LIB_DIR) -lMatrixLib -o $(EXEC)

# Компиляция исходного кода
obj/main.o: main.cpp
	mkdir -p obj
	$(CXX) $(CXXFLAGS) -c main.cpp -o obj/main.o

# Установка исполнимого файла
install: $(EXEC)
	# Создаем директорию для установки, если она не существует
	mkdir -p /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixApp/install/bin
	# Копируем исполнимый файл в папку установки
	cp $(EXEC) /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixApp/install/bin

# Очистка
clean:
	rm -rf obj
	rm -f $(EXEC)

# Удаление установленного
uninstall:
	rm -f /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixApp/i
