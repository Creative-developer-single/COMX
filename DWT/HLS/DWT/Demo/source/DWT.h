#include<iostream>
#include<fstream>
#include<string.h>
#include<cstdlib>
#include<iomanip>
#include<cstdio>
#include<ap_int.h>

#define TEST_DATA_LENGTH 1024

bool ReadData(float *data,int *read_valid, int *read_ready,int *read_over);
void DWT(float *data_out,float *data,int *read_valid,int *read_ready,int *read_over,int *write_valid);
