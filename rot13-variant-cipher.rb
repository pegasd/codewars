#!/usr/bin/env ruby

def encrypter(string)
  string.tr('a-zA-Z', 'n-za-mn-za-m').tr('a-z', 'zyxwvutsrqponmlkjihgfedcba')
end
