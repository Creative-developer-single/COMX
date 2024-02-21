#pragma once

#define DATA_W 28
#define DATA_H 28

#define CONV1_IN_CHANNELS 1
#define CONV1_OUT_CHANNELS 3
#define CONV2_IN_CHANNELS 3
#define CONV2_OUT_CHANNELS 5

#define CONV1_CORE_SIZE 5
#define CONV2_CORE_SIZE 5

#define CONV1_OUTPUT_SIZE 24
#define CONV2_INPUT_SIZE 12
#define CONV2_OUTPUT_SIZE 8

#define POOLING1_CORE_SIZE 2
#define POOLING2_CORE_SIZE 2
#define POOLING1_OUTPUT_SIZE 12
#define POOLING2_OUTPUT_SIZE 4

#define FLATTEN_SIZE 80

#define FC1_IN_FEATURES 80
#define FC1_OUT_FEATURES 50
#define FC2_IN_FEATURES 50
#define FC2_OUT_FEATURES 10

class CNN
{
private:
	float conv1_input[DATA_H][DATA_W];
	float conv1_output[CONV1_OUT_CHANNELS][CONV1_OUTPUT_SIZE][CONV1_OUTPUT_SIZE];

	float pool1_output[CONV1_OUT_CHANNELS][POOLING1_OUTPUT_SIZE][POOLING1_OUTPUT_SIZE];

	float conv2_output[CONV2_OUT_CHANNELS][CONV2_OUTPUT_SIZE][CONV2_OUTPUT_SIZE];

	float pool2_output[CONV2_OUT_CHANNELS][POOLING2_OUTPUT_SIZE][POOLING2_OUTPUT_SIZE];

	float flatten_output[FLATTEN_SIZE];

	float fc1_output[FC1_OUT_FEATURES];
	float fc2_output[FC2_OUT_FEATURES];

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


public:
	CNN();
	void setData(float data[DATA_H][DATA_W]);
	//void Conv1_layer(float input_arr[DATA_H][DATA_W], float output_arr[CONV1_OUT_CHANNELS][CONV1_OUTPUT_SIZE][CONV1_OUTPUT_SIZE]);
	void Conv1_layer();
	void MaxPooling1_layer();
	void Conv2_layer();
	void MaxPooling2_layer();
	void Flatten_layer();
	void FC1_layer();
	void FC2_layer();
};
