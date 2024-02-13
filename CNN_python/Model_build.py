import os

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D, MaxPooling2D, Flatten, Dense, Dropout

import mp3_read

datalist = mp3_read.getWavData(os.getcwd() + '\zhmagicdata')

datalist[1] = tf.one_hot(datalist[1],395)
datalist[3] = tf.one_hot(datalist[3],395)

model = Sequential([
    # 卷积层，假设输入数据的形状是(13, 80, 1)，其中1是通道数
    Conv2D(9, kernel_size=(3, 3), activation='relu', input_shape=(64, 80, 1)),
    MaxPooling2D(pool_size=(2, 2)),
    Dropout(0.25),

    Conv2D(9, (3, 3), activation='relu'),
    MaxPooling2D(pool_size=(2, 2)),
    Conv2D(9, (3, 3), activation='relu'),
    MaxPooling2D(pool_size=(2, 2)),
    Conv2D(9, (3, 3), activation='relu'),
    Dropout(0.25),
    Conv2D(9, (3, 3), activation='relu'),

    # 展平层，从卷积层到全连接层的桥梁
    Flatten(),

    # 全连接层
    Dense(1024, activation='relu'),
    Dropout(0.5),

    # 输出层，根据你的类别数量可能需要更改units
    Dense(395, activation='softmax')  # 假设有10个类别
])

# 编译模型
model.compile(optimizer='adam',
              loss='categorical_crossentropy',
              metrics=['accuracy'])

model.fit(datalist[0], datalist[1], batch_size=64, epochs=15, validation_split=0.2)

model.evaluate(datalist[2], datalist[3])
