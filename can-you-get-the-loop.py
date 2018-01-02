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

    def generate_list(self, length, looped_at):
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


firstList = List(5, 2)
secondList = List(27, 12)

print loop_size(firstList.start)
print loop_size(secondList.start)
