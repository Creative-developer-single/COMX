#include <iostream>
#include <fstream>
#include "DWT.h"

using namespace std;

float data_output;

int main()
{
	ifstream file("DWT_test.txt");
	string line;

	int read_valid = 0;
	int read_ready = 1;
	int read_over = 0;

	int write_valid = 0;

	float data = 0;

	int cnt = 0;

	if(file.is_open())
	{
		while(getline(file,line))
		{
			try
			{
				if(cnt == TEST_DATA_LENGTH)
					break;
				else
				{
					data = stof(line);
					read_valid = 1;

					if(read_ready == 1)
						DWT(&data_output,&data,&read_valid,&read_ready,&read_over,&write_valid);

					read_valid = 0;

					if(read_over == 1)
						break;
				}

			}catch(invalid_argument &e)
			{
				cout << "invalid_argument: "<<line<<endl;
			}
		}
	}

	DWT(&data_output,&data,&read_valid,&read_ready,&read_over,&write_valid);

	for(int i=0;i<=4;i++)
		for(int j=0;j<=TEST_DATA_LENGTH-1;j++)
			DWT(&data_output,&data,&read_valid,&read_ready,&read_over,&write_valid);

}
