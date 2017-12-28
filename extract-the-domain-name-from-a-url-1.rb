#!/usr/bin/env ruby

def domain_name(url)
  url.sub(%r{^https?://(www\.)?}, '').sub(/\..*/, '')
end
