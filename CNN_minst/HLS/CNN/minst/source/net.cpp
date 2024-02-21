#include "net.h"

CNN net;

void Test(float data[DATA_H][DATA_W])
{
	net.setData(data);
	net.Conv1_layer();
	net.MaxPooling1_layer();
	net.Conv2_layer();
	net.MaxPooling2_layer();
	net.Flatten_layer();
	net.FC1_layer();
	net.FC2_layer();
}
