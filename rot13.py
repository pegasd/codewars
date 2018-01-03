#!/usr/bin/env python3

"""
This also works:
message.encode('rot13')
"""
def rot13(message):
    new_message = ''
    for char in message:
        ascii_char = ord(char)
        if 65 <= ascii_char <= 77 or 97 <= ascii_char <= 109:
            new_message += chr(ord(char) + 13)
        elif 78 <= ascii_char <= 90 or 110 <= ascii_char <= 122:
            new_message += chr(ord(char) - 13)
        else:
            new_message += char
    return new_message

print(rot13('EBG13 rknzcyr.'))
