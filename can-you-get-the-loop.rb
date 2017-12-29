#!/usr/bin/env ruby

class Node
  attr_accessor :node, :next

  def initialize(node = nil)
    @node = node
  end
end

def create_chain_for_test(tail_size, loop_size)
  prev_node  = start = Node.new
  start.next = start
  return start if loop_size == 1
  (1..tail_size).each do |i|
    prev_node.next = Node.new
    prev_node      = prev_node.next
  end
  end_loop = prev_node
  (1...loop_size).each do |i|
    prev_node.next = Node.new
    prev_node      = prev_node.next
  end
  prev_node.next = end_loop
  start
end

def loop_size(node)
  node_index = 0
  node_ids   = {}

  while true
    node_id = node.object_id
    return (node_index - node_ids[node_id]) if node_ids.key?(node_id)
    node_ids.store(node_id, node_index)
    node  = node.next
    node_index += 1
  end
end

my_node = create_chain_for_test(1700, 5000)
puts loop_size(my_node)
