#pragma once
#include "net_params.h"
#include "DataLoader.h"
#include <cstdio>
#include <algorithm>
#include <iostream>

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


void Conv1_layer();
void MaxPooling1_layer();
void Conv2_layer();
void MaxPooling2_layer();
void Flatten_layer();
void FC1_layer();
void FC2_layer(int *predict);
void Init();
void run(float *data_in,int *predict);
