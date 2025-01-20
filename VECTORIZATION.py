import numpy as np
import time
import random


def cal_quant_int_vectorized(nr, int_limit = 256):
    min = np.min(nr)
    max = np.max(nr)
    S = (max-min)/(int_limit - 1)
    Z = int_limit - int(max/S)
    Q = (np.int64(nr/S) + Z) % int_limit
    return Q

def cal_quant_int2_vectorized(nr):
    return nr*255

def give_Alg1_time(list, size = 1):
    minn = min(list)
    maxx = max(list)
    time_start = time.time()
    cal_quant_int_vectorized(list)
    time_end = time.time()
    total_time = (time_end - time_start)

    print(f"Alg1 time: {total_time} with vector size: {size}")

def give_Alg2_time(list, size = 1):
    minn = min(list)
    maxx = max(list)
    time_start = time.time()
    cal_quant_int2_vectorized(list)
    time_end = time.time()
    total_time = (time_end - time_start)

    print(f"Alg2 time: {total_time} with vector size: {size}")