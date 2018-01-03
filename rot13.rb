#!/usr/bin/env ruby

# Lots more at:
# https://gist.github.com/rwoeber/274126

def rot13(message)
  message.tr 'a-zA-Z', 'n-za-mN-ZA-M'
end
