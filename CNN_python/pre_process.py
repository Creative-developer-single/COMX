import os

import sounddevice as sd
from scipy.io import wavfile
import matplotlib.pyplot as plt
import numpy as np
import librosa
import librosa.display


def record_audio(duration=3, samplerate=16000, fileName="test.wav"):
    print('task1: start recording')
    recording = sd.rec(int(duration * samplerate), samplerate=samplerate, channels=2, dtype='int16')
    sd.wait()
    print('task1: finished')

    wavfile.write(fileName, samplerate, recording)


def merge_channels_2_to_1(fileName="test.wav"):
    print('task2: read file: ' + fileName)
    samplerate, data = wavfile.read(fileName)
    print('task2: finished')

    print('task3: merge channels')
    if data.ndim == 2 and data.shape[1] == 2:
        voice_data = data.mean(axis=1, dtype='int16')
        print('task3: finished')

        print('task4: sav new file as ' + fileName)
        wavfile.write(fileName, samplerate, voice_data)
        print('task4: finished')


def get_mfcc_data_from_file(fileName, frame_length, percent, mfcc_cnt, sr=None):
    y, sr = librosa.load(fileName, sr=sr, offset=0.3, duration=1.2)

    frame_samples = int(sr * frame_length / (1000 * (1 - percent / 100.0)))

    hop_length = int(frame_samples * (1 - percent / 100.0))

    n_fft = 2 ** int(np.ceil(np.log2(frame_samples)))

    mfccs = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=mfcc_cnt, n_fft=n_fft, hop_length=hop_length)

    mfccs = mfccs[:, :-1]

    return mfccs


def get_mfcc_data(fileName, frame_length, percent, mfcc_cnt, sr=None):
    y, sr = librosa.load(fileName, sr=sr, offset=0.3, duration=1.2)

    frame_samples = int(sr * frame_length / (1000 * (1 - percent / 100.0)))

    hop_length = int(frame_samples * (1 - percent / 100.0))

    n_fft = 2 ** int(np.ceil(np.log2(frame_samples)))

    mfccs = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=mfcc_cnt, n_fft=n_fft, hop_length=hop_length)

    mfccs = mfccs[:, :-1]

    print(mfccs.shape)
    # print(mfccs[12][80])

    plt.figure(figsize=(10, 4))
    librosa.display.specshow(mfccs, x_axis='time', sr=sr, hop_length=hop_length)
    plt.colorbar()
    plt.title("MFCC features")
    plt.tight_layout()
    plt.show()


#record_audio(3, 16000, 'test.wav')
#merge_channels_2_to_1('test.wav')
#get_mfcc_data(os.getcwd()+'\\zhmagicdata'+'\\'+'5_541'+'\\'+'5_541_20170607160749.wav', 15, 50, 64)
#get_mfcc_data(os.getcwd()+'\\zhmagicdata'+'\\'+'16_3606'+'\\'+'16_3606_20170809135037.wav', 15, 50, 64)
