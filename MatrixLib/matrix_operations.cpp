#include "matrix_operations.h"
#include <stdexcept>
#include <algorithm>
#include <limits>  
#include "pch.h"

int matrixSum(const std::vector<std::vector<int>>& matrix) {
    int sum = 0;
    for (const auto& row : matrix) {
        for (int value : row) {
            sum += value;
        }
    }
    return sum;
}

int matrixMin(const std::vector<std::vector<int>>& matrix) {
    if (matrix.empty()) {
        throw std::invalid_argument("Матрица пуста.");
    }

    int min_value = matrix[0][0];
    for (const auto& row : matrix) {
        for (int value : row) {
            min_value = std::min(min_value, value);
        }
    }
    return min_value;
}

int matrixMax(const std::vector<std::vector<int>>& matrix) {
    if (matrix.empty()) {
        throw std::invalid_argument("Матрица пуста.");
    }

    int max_value = matrix[0][0];
    for (const auto& row : matrix) {
        for (int value : row) {
            max_value = std::max(max_value, value);
        }
    }
    return max_value;
}

std::vector<std::vector<int>> getMatrixPart(const std::vector<std::vector<int>>& matrix, const std::string& part) {
    int size = matrix.size();
    std::vector<std::vector<int>> result(size, std::vector<int>(size, 0));

    if (part == "top_left") {
        // Верхний левый треугольник
        for (int i = 0; i < size; ++i) {
            for (int j = 0; j <= i; ++j) {
                result[i][j] = matrix[i][j];
            }
        }
    }
    else if (part == "top_right") {
        // Верхний правый треугольник
        for (int i = 0; i < size; ++i) {
            for (int j = i; j < size; ++j) {
                result[i][j] = matrix[i][j];
            }
        }
    }
    else if (part == "bottom_left") {
        // Нижний левый треугольник
        for (int i = 0; i < size; ++i) {
            for (int j = 0; j <= i; ++j) {
                result[i][j] = matrix[i][j];
            }
        }
    }
    else if (part == "bottom_right") {
        // Нижний правый треугольник
        for (int i = 0; i < size; ++i) {
            for (int j = i; j < size; ++j) {
                result[i][j] = matrix[i][j];
            }
        }
    }

    return result;
}


// Функция для поиска максимального элемента в части матрицы
int findMaxInPart(const std::vector<std::vector<int>>& matrixPart) {
    int maxVal = std::numeric_limits<int>::min();  // Инициализация минимальным значением
    for (const auto& row : matrixPart) {
        for (int num : row) {
            if (num > maxVal) {
                maxVal = num;  // Обновляем максимальное значение
            }
        }
    }
    return maxVal;
}