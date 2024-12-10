#ifndef MATRIX_OPERATIONS_H
#define MATRIX_OPERATIONS_H

#include <vector>
#include <string>  // Добавлено для использования std::string

int matrixSum(const std::vector<std::vector<int>>& matrix);
int matrixMin(const std::vector<std::vector<int>>& matrix);
int matrixMax(const std::vector<std::vector<int>>& matrix);

std::vector<std::vector<int>> getMatrixPart(const std::vector<std::vector<int>>& matrix, const std::string& part);

#endif // MATRIX_OPERATIONS_H
