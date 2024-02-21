#include "DataLoader.h"
#include<iostream>
#include<cstdio>
#include<fstream>

using namespace std;

string name;
int targets;
int data_in[PNG_SIZE][PNG_SIZE];
float data_out[PNG_SIZE][PNG_SIZE];


void SetDataName(string n)
{
	name = n;
}

void LoadPng()
{
	ifstream file(name.c_str());
	string line;

	int cnt = 0;

	int row = 0;
	int column = 0;

	if (file.is_open())
	{
		while (getline(file, line))
		{
			for (int i = 0; i < line.size(); i++)
			{
				if (line[i] >= '0' && line[i] <= '9')
				{
					cnt = cnt * 10 + int(line[i] - '0');
				}
				else
				{
					data_in[row][column++] = cnt;
					cnt = 0;
				}

			}
			row++;
			column = 0;
		}
	}
}

void Normalize()
{
	for (int i = 0; i < PNG_SIZE; i++)
		for (int j = 0; j < PNG_SIZE; j++)
			data_out[i][j] = data_in[i][j] / 255.0;
}

void GetData(float data[PNG_SIZE][PNG_SIZE])
{
	for (int i = 0; i < PNG_SIZE; i++)
		for (int j = 0; j < PNG_SIZE; j++)
			data[i][j] = data_out[i][j];
	return;
}

void PrintOutData()
{
	cout << "Data label: " << targets << endl;
	for (int i = 0; i < PNG_SIZE; i++)
		for (int j = 0; j < PNG_SIZE; j++)
			printf("%.3f ", data_out[i][j]);
	cout << endl;
}

void PrintRawData()
{
	cout << "Data label: " << targets << endl;
	for (int i = 0; i < 28; i++)
	{
		for (int j = 0; j < 28; j++)
			cout << data_in[i][j] << " ";
		cout << endl;
	}
}
