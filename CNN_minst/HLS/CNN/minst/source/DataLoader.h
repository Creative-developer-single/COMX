#pragma once
#include<string>

#define PNG_SIZE 28

void SetDataName(std::string n);
void LoadPng();
void Normalize();
void PrintRawData();
void PrintOutData();
void GetData(float data_out[PNG_SIZE][PNG_SIZE]);
