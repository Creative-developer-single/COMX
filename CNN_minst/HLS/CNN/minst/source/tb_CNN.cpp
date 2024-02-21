#include "DataLoader.h"
#include "test.h"

float data_get[PNG_SIZE][PNG_SIZE];

int predict = 0;

using namespace std;

int main()
{
	SetDataName("test_png1.txt");

	float data_get[PNG_SIZE][PNG_SIZE];

	LoadPng();
	Normalize();
	GetData(data_get);
	PrintRawData();

	for(int i=0;i<28;i++)
		for(int j=0;j<28;j++)
			run(&data_get[i][j],&predict);

	run(&data_get[0][0],&predict);
}
