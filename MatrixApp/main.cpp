#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include "matrix_operations.h"
#include "pch.h"

/**
 * @brief Выводит инструкции по использованию программы.
 */
void printUsage() {
    std::cout << "Использование: MatrixApp <файл> <часть матрицы> <операция>\n";
    std::cout << "Части матрицы: top_left, top_right, bottom_left, bottom_right\n";
    std::cout << "Операции: sum, min, max\n";
}

/**
 * @brief Считывает матрицу из текстового файла.
 * @param filename Имя файла, содержащего матрицу.
 * @return Двумерный вектор, представляющий матрицу.
 * @throws std::runtime_error Если файл не может быть открыт.
 */
std::vector<std::vector<int>> readMatrixFromFile(const std::string& filename) {
    std::ifstream file(filename);
    std::vector<std::vector<int>> matrix;
    std::string line;

    if (!file.is_open()) {
        throw std::runtime_error("Не удалось открыть файл.");
    }

    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::vector<int> row;
        int value;
        while (iss >> value) {
            row.push_back(value);
        }
        matrix.push_back(row);
    }

    return matrix;
}

/**
 * @brief Главная функция программы.
 *
 * @param argc Количество аргументов командной строки.
 * @param argv Массив аргументов командной строки.
 * @return Код возврата программы. 0 в случае успешного выполнения, 1 в случае ошибки.
 */
int main(int argc, char* argv[]) {
    if (argc != 4) {
        printUsage();
        return 1
    }

    try {
        std::string filename = argv[1];
        std::string part = argv[2];
        std::string operation = argv[3];

        // Чтение матрицы из файла
        auto matrix = readMatrixFromFile(filename);

        // Получаем часть матрицы
        auto matrixPart = getMatrixPart(matrix, part);

        // Выполняем операцию
        if (operation == "sum") {
            std::cout << "Сумма: " << matrixSum(matrixPart) << "\n";
        }
        else if (operation == "min") {
            std::cout << "Минимальный элемент: " << matrixMin(matrixPart) << "\n";
        }
        else if (operation == "max") {
            std::cout << "Максимальный элемент: " << matrixMax(matrixPart) << "\n";
        }
        else {
            printUsage();
            return 1;
        }
    }
    catch (const std::exception& e) {
        std::cerr << "Ошибка: " << e.what() << "\n";
        return 1;
    }

    return 0;
}
