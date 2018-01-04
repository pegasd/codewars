#!/usr/bin/env python3

def removNb_one(n):
    """

    First iteration

    Slow for multiple reasons:
        * iterating over the whole list twice
        * array sum is calculated on each pass

    O(n^2) + some more for calculating list sum on each pass

    """
    result = []
    myrange = range(1, n + 1)
    for x in range(1, n + 1):
        for y in range(1, n + 1):
            if x == y:
                continue
            mylist = list(myrange)
            mylist.remove(x)
            mylist.remove(y)
            if x * y == sum(mylist):
                result.append((x, y))
                result.append((y, x))
    return result


def removNb_two(n):
    """

    Second iteration

    Faster because:
        * we only iterate over 'the rest of the list' on second loop
        * sum is calculated once in the beginning and we just substract
          x and y from it

    < O(n^2)

    """
    result = []
    sequence_sum = sum(range(1, n + 1))
    for x in range(1, n):
        for y in range(x + 1, n + 1):
            if x * y == sequence_sum - (x + y):
                result.append((x, y))
                result.append((y, x))
    return result

def removNb(n):
    """

    Third iteration

    This one actually passed tests (though my first solution was in Swift)

    O(n)

    """
    result = []
    sequence_sum = n * (n + 1) / 2
    for x in range(1, n + 1):
        y = (sequence_sum - x) // (x + 1)
        if y <= n and x * y == (sequence_sum - x - y):
            result.append((x, y))
    return result

print(removNb(100)) # []
print(removNb(26)) # [(15, 21), (21, 15)]
print(removNb(37)) # [(21,31), (31,21)]
print(removNb(101)) # [(55,91), (91,55)]
print(removNb(100000)) # []
