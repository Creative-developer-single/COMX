#include "DWT.h"

using namespace std;

const float filter_h[5][10] = { -0.707106,0.707106,0,0,0,0,0,0,0,0,
						  0.4829629131445,0.836516303,0.22414386,-0.129409522,0,0,0,0,0,0,
						  0.3326705529500,0.80689150,0.45987750,-0.135011020,-0.08544127,0.03522629,0,0,0,0,
						  0.2303778133088,0.71484657,0.63088076,-0.027983769,-0.187034811,0.030841381,0.032883011,-0.0105974017,0,0,
						  0.1601023979741,0.60382926,0.72430852,0.1384281459,-0.242294887,-0.032244869,0.077571493,-0.0062414902,-0.012580751,0.003335725};

const float filter_g[5][10] = { 0.707106,0.707106,0,0,0,0,0,0,0,0,
						 -0.129409522551,-0.22414386,0.83651630,-0.482962913,0,0,0,0,0,0,
						 0.0352262918857,0.08544127,-0.13501102,-0.459877502,0.806891509,-0.33267055,0,0,0,0,
						 -0.0105974017850,-0.03288301,0.03084138,0.1870348117,-0.027983769,-0.630880767,0.714846570,-0.2303778133,0,0,
						 0.0033357252854,0.012580751,-0.0062414,-0.077571493,-0.032244869,0.2422948870,0.138428145,-0.7243085284,0.6038292697,-0.16010239 };

float data_in[4*TEST_DATA_LENGTH];

bool ReadData(float *data,int *read_valid,int *read_ready,int *read_over)
{
	static int cnt = 0;
	*read_ready = 0;
	*read_over = 0;

	if(*read_valid == 1)
	{
		data_in[cnt++] = *data;
		*read_ready = 1;
	}
	if(cnt == TEST_DATA_LENGTH)
	{
		*read_ready = 1;
		*read_over = 1;
		return true;
	}
	return false;
}

void DWT(float *data_out,float *data,int *read_valid,int *read_ready,int *read_over,int *write_valid)
{
	float data_input[2*TEST_DATA_LENGTH];
	float data_store[2*TEST_DATA_LENGTH];
	float data_output[5][2*TEST_DATA_LENGTH];

	static int cal_flag = 0;

	if(cal_flag == 0)
	{
	if(ReadData(data,read_valid,read_ready,read_over) == false)
		return;

	memset(data_store, 0, sizeof(data_store));
	memset(data_output, 0, sizeof(data_output));
	memset(data_input, 0, sizeof(data_input));


	cout<<"read sessions complete: "<<endl;
	cout<<"data: "<<endl;

	int cnt = 0;

	for(int i=0;i<=63;i++)
	{
		for(int j=0;j<=15;j++)
			cout<<data_in[cnt++]<<" ";
		cout<<endl;
	}


	int cal_length = TEST_DATA_LENGTH;

	for (int i = 0; i <= TEST_DATA_LENGTH - 1; i++)
		data_input[i] = data_in[i];

	for (int level = 0; level <= 4; level++)
	{
		loop6:for (int n = 0; n <= cal_length - 1; n++)
		{
#pragma HLS loop_tripcount min=0 max=1024
			loop1:for (int k = 0; k <= 2 * n; k++)
			{
#pragma HLS loop_tripcount min=0 max=12
				if(k>=10)
					break;
				data_store[n] += data_input[2 * n - k] * (k <= 9 ? filter_g[level][k] : 0);
				data_output[level][n] += data_input[2 * n - k] * (k <= 9 ? filter_h[level][k] : 0);
			}
		}

		cal_length /= 2;

		loop2:for (int i = 0; i <= cal_length - 1; i++)
#pragma HLS loop_tripcount min=0 max=1024
				data_input[i] = data_store[i*2];
		loop5:for (int i = cal_length; i <= TEST_DATA_LENGTH - 1; i++)
#pragma HLS loop_tripcount min=0 max=1024
			data_input[i] = 0;
		loop3:for (int i = 0; i <= cal_length - 1; i++)
#pragma HLS loop_tripcount min=0 max=1024
				data_output[level][i] = data_output[level][i * 2];
		loop4:for (int i = cal_length; i <= TEST_DATA_LENGTH - 1; i++)
#pragma HLS loop_tripcount min=0 max=1024
				data_output[level][i] = 0;
		for (int i = 0; i <= TEST_DATA_LENGTH - 1; i++)
			data_store[i] = 0;
	}
	}
	cal_flag = 1;

	static int i=0;
	static int j=0;


	if(i!=5)
	{
		if(j == TEST_DATA_LENGTH)
		{
			j = 0;
			i++;
		}
		*write_valid = 0;
		*data_out = data_output[i][j];
		*write_valid = 1;
		j++;

		return;
	}


	/*
	for(int i=0;i<=4;i++)
		for(int j=0;j<=TEST_DATA_LENGTH-1;j++)
		{
			*write_valid = 0;
			*data = data_output[i][j];
			*write_valid = 1;
		}
	*/

	cout<<"read sessions test pass: "<<endl;
	cout<<"output sessions test: "<<endl;

	cout<<endl;


	for(int level = 0;level<=4;level++)
	{
		for(int i=0;i<=TEST_DATA_LENGTH/2-1;i++)
			cout<<data_output[level][i]<<" ";
		cout<<endl;
	}
}

