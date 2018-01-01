#!/usr/bin/env python2


#   *   # [1,3]
#  ***  # [2,2] [2,3] [2,4]
# ***** # [3,1] [3,2] [3,3] [3,4] [3,5]
#  ***  # [4,2] [4,3] [4,4]
#   *   # [5,3]


def distance_sum(center, x, y):
    return abs(center - x) + abs(center - y)


def diamond(n):
    if (n % 2) == 0 or n < 0:
        return None

    result = ''
    half = n / 2

    for x in range(n):
        for y in range(n):
            if distance_sum(half, x, y) <= half:
                result += '*'
            else:
                result += ' ' if y < half else ''
        result += "\n"

    return result

print diamond(7)
print diamond(13)
