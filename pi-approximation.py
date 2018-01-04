#!/usr/bin/env python3

from math import pi

def iter_pi(epsilon):
    count = 1
    my_pi = 4.0
    while abs(pi - my_pi) > epsilon:
        if count % 2:
            my_pi -= (1.0 / (count * 2 + 1)) * 4
        else:
            my_pi += (1.0 / (count * 2 + 1)) * 4
        count += 1
    return [count, round(my_pi, 10)]


print(iter_pi(0.1))
print(iter_pi(0.01))
print(iter_pi(0.001))
print(iter_pi(0.0001))
print(iter_pi(0.00001))
print(iter_pi(0.000001))
