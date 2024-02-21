#include "CNN.h"
#include "net_params.h"
#include <algorithm>
#include <iostream>
#include <cstring>

using namespace std;

void CNN::setData(float data[DATA_H][DATA_W])
{
	for (int i = 0; i < DATA_H; i++)
		for (int j = 0; j < DATA_W; j++)
			conv1_input[i][j] = data[i][j];
}

CNN::CNN()
{
	for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
		for (int i = 0; i < CONV1_OUTPUT_SIZE; i++)
			for (int j = 0; j < CONV1_OUTPUT_SIZE; j++)
				conv1_output[channels][i][j] = 0;

	for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
		for (int i = 0; i < POOLING1_OUTPUT_SIZE; i++)
			for (int j = 0; j < POOLING1_OUTPUT_SIZE; j++)
				pool1_output[channels][i][j] = 0;

	for (int channels = 0; channels < CONV2_OUT_CHANNELS; channels++)
		for (int i = 0; i < CONV2_OUTPUT_SIZE; i++)
			for (int j = 0; j < CONV2_OUTPUT_SIZE; j++)
				conv2_output[channels][i][j] = 0;

	for (int channels = 0; channels < CONV2_OUT_CHANNELS; channels++)
		for (int i = 0; i < POOLING2_OUTPUT_SIZE; i++)
			for (int j = 0; j < POOLING2_OUTPUT_SIZE; j++)
				pool2_output[channels][i][j] = 0;

	for (int i = 0; i < FLATTEN_SIZE; i++)
		flatten_output[i] = 0;

	for (int i = 0; i < FC1_OUT_FEATURES; i++)
		fc1_output[i] = 0;

	for (int i = 0; i < FC2_OUT_FEATURES; i++)
		fc2_output[i] = 0;


	conv1_input_size = DATA_H;
	conv1_output_size = CONV1_OUTPUT_SIZE;

	maxpool1_input_size = CONV1_OUTPUT_SIZE;
	maxpool1_output_size = POOLING1_OUTPUT_SIZE;

	conv2_input_size = CONV2_INPUT_SIZE;
	conv2_output_size = CONV2_OUTPUT_SIZE;

	maxpool2_input_size = CONV2_OUTPUT_SIZE;
	maxpool2_output_size = POOLING2_OUTPUT_SIZE;

	flatten_size = FLATTEN_SIZE;

	fc1_input_size = FC1_IN_FEATURES;
	fc1_output_size = FC1_OUT_FEATURES;

	fc2_input_size = FC2_IN_FEATURES;
	fc2_output_size = FC2_OUT_FEATURES;
}

void CNN::Conv1_layer()
{
	for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
		for (int row = 0; row < conv1_output_size; row++)
			for (int column = 0; column < conv1_output_size; column++)
			{
				for (int i = 0; i < CONV1_CORE_SIZE; i++)
					for (int j = 0; j < CONV1_CORE_SIZE; j++)
						conv1_output[channels][row][column] += (conv1_core[channels][i][j] * conv1_input[row + i][column + j]);
				conv1_output[channels][row][column] += conv1_bias[channels];
			}

	cout << "Conv1_layer: " << endl;
	for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < conv1_output_size; row++)
		{
			for (int column = 0; column < conv1_output_size; column++)
				//printf("%.4f ", conv1_output[channels][row][column]);
				cout<<conv1_output[channels][row][column]<<" ";
			cout << endl;
		}
	}
}

void CNN::MaxPooling1_layer()
{
	float maxn = 0;

	cout << "pooling1_layer" << endl;
		for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
		{
			cout << "Channels: " << channels << endl;
			for (int row = 0; row < maxpool1_output_size; row++)
			{
				for (int column = 0; column < maxpool1_output_size; column++)
					printf("%.4f ", pool1_output[channels][row][column]);
				cout << endl;
			}

		}

	for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
		for (int row = 0; row < maxpool1_output_size; row++)
			for (int column = 0; column < maxpool1_output_size; column++)
			{
				maxn = 0;
				for (int i = 0; i < POOLING1_CORE_SIZE; i++)
					for (int j = 0; j < POOLING1_CORE_SIZE; j++)
					{
						if (maxn < conv1_output[channels][row * POOLING1_CORE_SIZE + i][column * POOLING1_CORE_SIZE + j])
							maxn = conv1_output[channels][row * POOLING1_CORE_SIZE + i][column * POOLING1_CORE_SIZE + j];
					}
				pool1_output[channels][row][column] = maxn > 0 ? maxn : 0;//relu
			}
	cout << "pooling1_layer" << endl;
	for (int channels = 0; channels < CONV1_OUT_CHANNELS; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < maxpool1_output_size; row++)
		{
			for (int column = 0; column < maxpool1_output_size; column++)
				printf("%.4f ", pool1_output[channels][row][column]);
			cout << endl;
		}
			
	}
}
//not finished
void CNN::Conv2_layer()
{
	for (int channels = 0; channels < CONV2_OUT_CHANNELS; channels++)
		for (int row = 0; row < conv2_output_size; row++)
			for (int column = 0; column < conv2_output_size; column++)
			{
				for (int i = 0; i < CONV2_CORE_SIZE; i++)
					for (int j = 0; j < CONV2_CORE_SIZE; j++)
						for (int k = 0; k < CONV2_IN_CHANNELS; k++)
							conv2_output[channels][row][column] += (conv2_core[channels][k][i][j] * pool1_output[k][row + i][column + j]);
				conv2_output[channels][row][column] += conv2_bias[channels];
			}

	cout << "Conv2_layer: " << endl;
	for (int channels = 0; channels < CONV2_OUT_CHANNELS; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < conv2_output_size; row++)
		{
			for (int column = 0; column < conv2_output_size; column++)
				printf("%.4f ", conv2_output[channels][row][column]);
			cout << endl;
		}
	}
}

void CNN::MaxPooling2_layer()
{
	float maxn = 0;
	for(int channels =0;channels <CONV2_OUT_CHANNELS;channels++)
		for(int row =0;row < maxpool2_output_size;row++)
			for (int column = 0; column < maxpool2_output_size; column++)
			{
				maxn = 0;
				for (int i = 0; i < POOLING2_CORE_SIZE; i++)
					for (int j = 0; j < POOLING2_CORE_SIZE; j++)
						if (maxn < conv2_output[channels][2 * row + i][2 * column + j])
							maxn = conv2_output[channels][2 * row + i][2 * column + j];
				pool2_output[channels][row][column] = maxn > 0 ? maxn : 0;
			}

	cout << "Pooling2_layer: " << endl;
	for (int channels = 0; channels < CONV2_OUT_CHANNELS; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < maxpool2_output_size; row++)
		{
			for (int column = 0; column < maxpool2_output_size; column++)
				printf("%.4f ", pool2_output[channels][row][column]);
			cout << endl;
		}
	}
}

void CNN::Flatten_layer()
{
	int cnt = 0;

	for (int channels = 0; channels < CONV2_OUT_CHANNELS; channels++)
		for (int row = 0; row < maxpool2_output_size; row++)
			for (int column = 0; column < maxpool2_output_size; column++)
				flatten_output[cnt++] = pool2_output[channels][row][column];

	cout << "Flatten_layer: " << endl;
	for (int i = 0; i < cnt - 1; i++)
		printf("%.4f ", flatten_output[i]);
	cout << endl;
}

void CNN::FC1_layer()
{
	for (int i = 0; i < FC1_OUT_FEATURES; i++)
	{
		for (int k = 0; k < FC1_IN_FEATURES; k++)
			fc1_output[i] += flatten_output[k] * fc1_wei[k][i];
		fc1_output[i] += fc1_bias[i];
		fc1_output[i] = fc1_output[i] > 0 ? fc1_output[i] : 0;
	}

	cout << "FC1_layer: " << endl;
	for (int i = 0; i < FC1_OUT_FEATURES; i++)
		printf("%.4f ", fc1_output[i]);
	cout << endl;
			
}

void CNN::FC2_layer()
{
	float maxn = 0;
	int index = 0;

	for (int i = 0; i < FC2_OUT_FEATURES; i++)
	{
		for (int k = 0; k < FC2_IN_FEATURES; k++)
			fc2_output[i] += fc1_output[k] * fc2_wei[k][i];
		fc2_output[i] += fc2_bias[i];
	}

	cout << "FC2_layer: " << endl;
	for (int i = 0; i < FC2_OUT_FEATURES; i++)
		printf("%.4f ", fc2_output[i]);
	cout << endl;
	cout << endl;

	for (int i = 0; i < FC2_OUT_FEATURES; i++)
		if (maxn < fc2_output[i])
		{
			maxn = fc2_output[i];
			index = i;
		}

	cout << "Predict: " << index;
}
