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


# Testing is kinda weird, but I'll try
class Node:
    def __init__(self, initdata=None):
        self.data = initdata
        self.next = None

    def getData(self):
        return self.data

    def getNext(self):
        return self.next

    def setData(self, newdata):
        self.data = newdata

    def setNext(self, newnext):
        self.next = newnext


# I'm starting to feel like I need testing for testing
class List:
    def __init__(self, length=0, looped_at=None):
        self.start = self.generate_list(length, looped_at)

    def generate_list(self, length, looped_at=None):
        self.length = length
        self.looped = True if looped_at else False
        self.looped_at = looped_at
        if not self.length:
            return None
        start = Node()
        finish = start
        loop_here = None
        for index in range(1, length):
            finish.next = Node()
            if self.looped and index == self.looped_at:
                loop_here = finish
            finish = finish.next
        if loop_here:
            finish.next = loop_here
        return start


"""
Loop size can be calculated as such:

length - looped_at + 1

So, if we have a list of size 5 and we're looped at node #2:
 * the tail size is 1
 * the loop size is 4
"""
firstList = List(5, 2)  # Loop size: (5 - 2) + 1 = 4
secondList = List(27, 12)  # Loop size: (27 - 12) + 1 = 16

print loop_size(firstList.start)
print loop_size(secondList.start)
