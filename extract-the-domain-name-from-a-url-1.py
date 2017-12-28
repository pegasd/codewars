#!/usr/bin/env python3

import re
def domain_name(url):
    return re.compile(r'^https?:\/\/(www\.)?([^\.]+)\..*').sub(r'\2', url)

print(domain_name('http://github.com/carbonfive/raygun'))
