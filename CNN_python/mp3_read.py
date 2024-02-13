import os
import glob
import librosa
import numpy as np

import tensorflow as tf

import pre_process


def getWavData(rootDirectory):
    dir_list = []
    mp3_list = []

    speaker_cnt = 0
    # get all the directory
    for d in os.listdir(rootDirectory):
        if os.path.isdir(rootDirectory + '\\' + str(d)):
            if speaker_cnt <= 500:
                dir_list.append(str(d))
                speaker_cnt = speaker_cnt + 1

    for d in dir_list:
        cnt = 0
        mp3_files = glob.glob(os.path.join(rootDirectory + '\\' + str(d), "*.wav"))

        # print('enter '+str(d))
        if len(mp3_files) >= 500:
            mp3_array = []
            cnt = 0
            for item in mp3_files:
                if cnt <= 100:
                    y, sr = librosa.load(item, sr=None)
                    duration = librosa.get_duration(y=y, sr=sr)
                    if duration >= 1.5:
                        print('enter: ' + item.title())
                        mp3_array.append(pre_process.get_mfcc_data_from_file(item.title(), 15, 50, 64))
                        cnt = cnt + 1

            mp3_list.append(mp3_array)
        # print("current dir is "+str(d)+' and count is '+str(len(mp3_files)))
    data_out = np.array(mp3_list)
    print(data_out.shape)
    print('finished')

    print('task: build train sets and test sets')
    trainset_arr = [row[0:80] for row in mp3_list]
    testset_arr = [row[81:] for row in mp3_list]

    train_set = []
    train_label = []
    test_set = []
    test_label = []

    pt_cnt = 0

    for row in trainset_arr:
        for i in range(len(row)):
            train_set.append(row[i])
            train_label.append(pt_cnt)
            # print(trainset_arr.index(row))
        pt_cnt = pt_cnt + 1

    pt_cnt = 0

    for row in testset_arr:
        for i in range(len(row)):
            test_set.append((row[i]))
            test_label.append(pt_cnt)

        pt_cnt = pt_cnt + 1

    train_set = np.array(train_set)
    train_label = np.array(train_label)
    test_set = np.array(test_set)
    test_label = np.array(test_label)

    print('train shape: ' + str(train_set.shape) + ' test shape: ' + str(test_set.shape))
    print('train_label shape: ' + str(train_label.shape) + ' test_label shape: ' + str(test_label.shape))

    return [train_set, train_label, test_set, test_label]

    # print(data_out.shape)

    # print(rootDirectory)
    # print(dir_list)

#getMp3Data(os.getcwd() + '\zhmagicdata')
# searchMp3Data(str(os.getcwd())+'\zhmagicdata')
# print(os.getcwd())
