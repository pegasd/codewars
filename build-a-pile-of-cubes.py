#!/usr/bin/env python3

some_cubes = [0]

def find_nb(m):
    while some_cubes[-1] < m:
        some_cubes.append(some_cubes[-1] + len(some_cubes) ** 3)
    if m in some_cubes:
        return some_cubes.index(m)
    return -1

print(find_nb(4183059834009)) # 2022
print(find_nb(24723578342962)) # -1
print(find_nb(135440716410000)) # 4824
print(find_nb(40539911473216)) # 3568
print(find_nb(26825883955641)) # 3218
