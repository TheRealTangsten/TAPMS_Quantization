import time
import random
import numpy as np
import VECTORIZATION as vect

VECTOR_SIZE = 100000000
VECTOR_SIZE_LIST = [100000, 1000000, 10000000, 100000000, 500000000] #
VECTOR_SIZE_LIST_REAL = [100000, 1000000, 10000000, 100000000, 1000000000]
# [[1000000000 - 1bil]] [[100000000 - 100mil]] [[10000000 - 10mil]] [[1000000 - 1mil]] [[100000 - 100k]]

def give_Alg1_time(list, size = 1):
    minn = min(list)
    maxx = max(list)
    time_start = time.time()

    for i in range(len(values)):
        list[i] = cal_quant_int(list[i], minn, maxx)

    time_end = time.time()
    total_time = (time_end - time_start)

    print(f"Alg1 time: {total_time} with vector size: {size}")

def give_Alg2_time(list, size = 1):
    minn = min(list)
    maxx = max(list)
    time_start = time.time()

    for i in range(len(values)):
        list[i] = cal_quant_int2(list[i])

    time_end = time.time()
    total_time = (time_end - time_start)

    print(f"Alg2 time: {total_time} with vector size: {size}")


def cal_quant_int(nr, min = 0.01, max = 1, int_limit = 256):
    S = (max-min)/(int_limit - 1)
    Z = int_limit - int(max/S)
    Q = (int(nr/S) + Z) % int_limit
    return Q

def cal_quant_int2(nr):
    return nr*255

def cal_quant_int_vectorized(nr, int_limit = 256):
    min = np.min(nr)
    max = np.max(nr)
    S = (max-min)/(int_limit - 1)
    Z = int_limit - int(max/S)
    Q = (np.int64(nr/S) + Z) % int_limit
    return Q

def cal_quant_int2_vectorized(nr):
    return nr*255

def give_Alg1_time_vectorized(list, size = 1):
    minn = min(list)
    maxx = max(list)
    time_start = time.time()
    cal_quant_int_vectorized(list)
    time_end = time.time()
    total_time = (time_end - time_start)

    print(f"Alg1 time: {total_time} with vector size: {size}")

def give_Alg2_time_vectorized(list, size = 1):
    minn = min(list)
    maxx = max(list)
    time_start = time.time()
    cal_quant_int2_vectorized(list)
    time_end = time.time()
    total_time = (time_end - time_start)

    print(f"Alg2 time: {total_time} with vector size: {size}")


def generate_random_list(N):
    return [random.uniform(0, 1) for _ in range(N)]


# for size in VECTOR_SIZE_LIST:
#     values = generate_random_list(size)
#     give_Alg1_time(values, size)
#     give_Alg2_time(values, size)
#     print("---------------------------------------")

for size in VECTOR_SIZE_LIST:
    values = np.array(generate_random_list(size))
    vect.give_Alg1_time(values, size)
    vect.give_Alg2_time(values, size)
    print("---------------------------------------")



