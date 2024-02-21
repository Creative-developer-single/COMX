#include "test.h"

float conv1_input[DATA_H][DATA_W];
float conv1_output[CONV1_OUT_CHANNELS][CONV1_OUTPUT_SIZE][CONV1_OUTPUT_SIZE];

float pool1_output[CONV1_OUT_CHANNELS][POOLING1_OUTPUT_SIZE][POOLING1_OUTPUT_SIZE];

float conv2_output[CONV2_OUT_CHANNELS][CONV2_OUTPUT_SIZE][CONV2_OUTPUT_SIZE];

float pool2_output[CONV2_OUT_CHANNELS][POOLING2_OUTPUT_SIZE][POOLING2_OUTPUT_SIZE];

float flatten_output[FLATTEN_SIZE];

float fc1_output[FC1_OUT_FEATURES];
float fc2_output[FC2_OUT_FEATURES];

float data[DATA_H][DATA_W];

int conv1_input_size;
int conv1_output_size;

int maxpool1_input_size;
int maxpool1_output_size;

int conv2_input_size;
int conv2_output_size;

int maxpool2_input_size;
int maxpool2_output_size;

int flatten_size;

int fc1_input_size;
int fc1_output_size;

int fc2_input_size;
int fc2_output_size;

using namespace std;

void Init()
{
	for (int i = 0; i < 28; i++)
		for (int j = 0; j < 28; j++)
			conv1_input[i][j] = data[i][j];

	for (int channels = 0; channels < 3; channels++)
		for (int i = 0; i < 24; i++)
			for (int j = 0; j < 24; j++)
				conv1_output[channels][i][j] = 0;

	for (int channels = 0; channels < 3; channels++)
		for (int i = 0; i < 12; i++)
			for (int j = 0; j < 12; j++)
				pool1_output[channels][i][j] = 0;

	for (int channels = 0; channels < 5; channels++)
		for (int i = 0; i < 8; i++)
			for (int j = 0; j < 8; j++)
				conv2_output[channels][i][j] = 0;

	for (int channels = 0; channels < 5; channels++)
		for (int i = 0; i < 4; i++)
			for (int j = 0; j < 4; j++)
				pool2_output[channels][i][j] = 0;

	for (int i = 0; i < 80; i++)
		flatten_output[i] = 0;

	for (int i = 0; i < 50; i++)
		fc1_output[i] = 0;

	for (int i = 0; i < 10; i++)
		fc2_output[i] = 0;
	/*
	memset(conv1_output, 0, sizeof(conv1_output));
	memset(pool1_output, 0, sizeof(pool1_output));
	memset(conv2_output, 0, sizeof(conv2_output));
	memset(pool2_output, 0, sizeof(pool2_output));
	memset(flatten_output, 0, sizeof(flatten_output));
	memset(fc1_output, 0, sizeof(fc1_output));
	memset(fc2_output, 0, sizeof(fc2_output));
	*/

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

void Conv1_layer()
{
	Conv1_layer_label8:for (int channels = 0; channels < 3; channels++)
		Conv1_layer_label7:for (int row = 0; row < 24; row++)
			Conv1_layer_label0:for (int column = 0; column < 24; column++)
			{
				Conv1_layer_label1:for (int i = 0; i < 5; i++)
					for (int j = 0; j < 5; j++)
						conv1_output[channels][row][column] += (conv1_core[channels][i][j] * conv1_input[row + i][column + j]);
				conv1_output[channels][row][column] += conv1_bias[channels];
			}

	/*
	cout << "Conv1_layer: " << endl;
	for (int channels = 0; channels < 3; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < 24; row++)
		{
			for (int column = 0; column < 24; column++)
				printf("%.4f ", conv1_output[channels][row][column]);
			cout << endl;
		}
	}*/
}

void MaxPooling1_layer()
{
	float maxn = 0;

	for (int channels = 0; channels < 3; channels++)
		for (int row = 0; row < 12; row++)
			for (int column = 0; column < 12; column++)
			{
				maxn = 0;
				MaxPooling1_layer_label1:for (int i = 0; i < 2; i++)
					for (int j = 0; j < 2; j++)
					{
						if (maxn < conv1_output[channels][row * POOLING1_CORE_SIZE + i][column * POOLING1_CORE_SIZE + j])
							maxn = conv1_output[channels][row * POOLING1_CORE_SIZE + i][column * POOLING1_CORE_SIZE + j];
					}
				pool1_output[channels][row][column] = maxn > 0 ? maxn : 0;//relu
			}
	/*
	cout << "pooling1_layer" << endl;
	for (int channels = 0; channels < 3; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < 12; row++)
		{
			for (int column = 0; column < 12; column++)
				printf("%.4f ", pool1_output[channels][row][column]);
			cout << endl;
		}

	}*/
}
//not finished
void Conv2_layer()
{
	for (int channels = 0; channels < 5; channels++)
		Conv2_layer_label9:for (int row = 0; row < 8; row++)
			Conv2_layer_label12:for (int column = 0; column < 8; column++)
			{
				Conv2_layer_label2:for (int i = 0; i < 5; i++)
					for (int j = 0; j < 5; j++)
						for (int k = 0; k < 3; k++)
							conv2_output[channels][row][column] += (conv2_core[channels][k][i][j] * pool1_output[k][row + i][column + j]);
				conv2_output[channels][row][column] += conv2_bias[channels];
			}
	/*
	cout << "Conv2_layer: " << endl;
	for (int channels = 0; channels < 5; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < 8; row++)
		{
			for (int column = 0; column < 8; column++)
				printf("%.4f ", conv2_output[channels][row][column]);
			cout << endl;
		}
	}
	*/
}

void MaxPooling2_layer()
{
	float maxn = 0;
	for (int channels = 0; channels < 5; channels++)
		for (int row = 0; row < 4; row++)
			for (int column = 0; column < 4; column++)
			{
				maxn = 0;
				MaxPooling2_layer_label3:for (int i = 0; i < 2; i++)
					for (int j = 0; j < 2; j++)
						if (maxn < conv2_output[channels][2 * row + i][2 * column + j])
							maxn = conv2_output[channels][2 * row + i][2 * column + j];
				pool2_output[channels][row][column] = maxn > 0 ? maxn : 0;
			}
	/*
	cout << "Pooling2_layer: " << endl;
	for (int channels = 0; channels < 5; channels++)
	{
		cout << "Channels: " << channels << endl;
		for (int row = 0; row < 4; row++)
		{
			for (int column = 0; column < 4; column++)
				printf("%.4f ", pool2_output[channels][row][column]);
			cout << endl;
		}
	}*/
}

void Flatten_layer()
{
	int cnt = 0;

	Flatten_layer_label4:for (int channels = 0; channels < 5; channels++)
		for (int row = 0; row < 4; row++)
			for (int column = 0; column < 4; column++)
				flatten_output[cnt++] = pool2_output[channels][row][column];
	/*
	cout << "Flatten_layer: " << endl;
	for (int i = 0; i < 80; i++)
		printf("%.4f ", flatten_output[i]);
	cout << endl;
	*/
}

void FC1_layer()
{
	FC1_layer_label2:for (int i = 0; i < 50; i++)
	{
		FC1_layer_label5:for (int k = 0; k < 80; k++)
			fc1_output[i] += flatten_output[k] * fc1_wei[k][i];
		fc1_output[i] += fc1_bias[i];
		fc1_output[i] = fc1_output[i] > 0 ? fc1_output[i] : 0;
	}
	/*
	cout << "FC1_layer: " << endl;
	for (int i = 0; i < 50; i++)
		printf("%.4f ", fc1_output[i]);
	cout << endl;
	*/

}

void FC2_layer(int *predict)
{
	float maxn = 0;
	int index = 0;

	FC2_layer_label3:for (int i = 0; i < 10; i++)
	{
		FC2_layer_label6:for (int k = 0; k < 50; k++)
			fc2_output[i] += fc1_output[k] * fc2_wei[k][i];
		fc2_output[i] += fc2_bias[i];
	}

	cout << "FC2_layer: " << endl;
	for (int i = 0; i < 10; i++)
		printf("%.4f ", fc2_output[i]);
	cout << endl;
	cout << endl;

	for (int i = 0; i < 10; i++)
		if (maxn < fc2_output[i])
		{
			maxn = fc2_output[i];
			index = i;
		}

	*predict = index;

	cout << "Predict: " << *predict;
}

void run(float *data_in,int *predict)
{
	static int row = 0;
	static int column = 0;
	if(row != 28)
	{
		data[row][column++] = *data_in;
		if(column == 28)
		{
			column = 0;
			row++;
		}
		return;
	}

	cout<<"enter"<<endl;

	Init();
	Conv1_layer();
	MaxPooling1_layer();
	Conv2_layer();
	MaxPooling2_layer();
	Flatten_layer();
	FC1_layer();
	FC2_layer(predict);
}
