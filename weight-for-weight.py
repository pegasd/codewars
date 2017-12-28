#!/usr/bin/env python2

def order_weight(strng):
    result = strng.split(' ')
    for pass_no in xrange(len(result)):
        for char_no in xrange(1, len(result)):
            if greater_than(result[char_no - 1], result[char_no]):
                swap(result, char_no, char_no - 1)
    return ' '.join(result)

def greater_than(string_one, string_two):
    sum_one = sum(int(x) for x in list(string_one))
    sum_two = sum(int(x) for x in list(string_two))
    if sum_one > sum_two:
        return True
    if sum_two > sum_one:
        return False
    return string_one > string_two

def swap(my_list, position_one, position_two):
    temp = my_list[position_one]
    my_list[position_one] = my_list[position_two]
    my_list[position_two] = temp

print(order_weight('103 123 4444 99 2000'))
print(order_weight('2000 10003 1234000 44444444 9999 11 11 22 123'))
