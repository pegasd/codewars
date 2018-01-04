#!/usr/bin/env python2

import math


def rotate_by(char, shift):
    if 65 <= ord(char) <= 90:
        return chr((ord(char) - 65 + shift) % 26 + 65)
    if 97 <= ord(char) <= 122:
        return chr((ord(char) - 97 + shift) % 26 + 97)
    return char


def moving_shift(s, shift):
    encoded_message = ''
    for char in s:
        encoded_message += rotate_by(char, shift)
        shift += 1
    slice_len = int(math.ceil(float(len(encoded_message)) / 5))
    return [
        encoded_message[0:slice_len],
        encoded_message[slice_len:slice_len * 2],
        encoded_message[slice_len * 2:slice_len * 3],
        encoded_message[slice_len * 3:slice_len * 4],
        encoded_message[slice_len * 4:]
        ]


def demoving_shift(s, shift):
    encoded_str = ''.join(s)
    decoded_message = ''
    for char in encoded_str:
        decoded_message += rotate_by(char, -shift)
        shift += 1
    return decoded_message


print(moving_shift(
    "I should have known that you would have a perfect answer for me!!!", 1))
# ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv",
# " lvz wp!!!"]
print(demoving_shift(
    ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv",
     " lvz wp!!!"], 1))
