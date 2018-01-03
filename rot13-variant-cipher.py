#!/usr/bin/env python3

def encrypter(strng):
    new_message = ''
    for char in strng:
        ascii_char = ord(char)
        if 65 <= ascii_char <= 77 or 97 <= ascii_char <= 109:
            new_message += chr(ord(char) + 13)
        elif 78 <= ascii_char <= 90 or 110 <= ascii_char <= 122:
            new_message += chr(ord(char) - 13)
        else:
            new_message += char
    return new_message.lower().translate(str.maketrans("abcdefghijklmnopqrstuvwxyz", "zyxwvutsrqponmlkjihgfedcba"))
