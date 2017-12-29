#!/usr/bin/env python3

def loop_size(node):
    tortoise = node.next
    hare = node.next.next

    while tortoise != hare:
        tortoise = tortoise.next
        hare = hare.next.next

    distance = 1
    hare = hare.next
    while tortoise != hare:
        hare = hare.next
        distance += 1

    return distance
