# Print the contents of an array of sixteen numbers, four numbers at a time, using just each.
def puts_four(array)
  group = []
  array.each do |item|
    group << item
    if group.length == 4
      puts group.to_s
      group = []
    end
  end
  puts group.to_s if group.any?
end

puts_four((1..16).to_a)

# Now, do the same with each_slice in Enumerable.
puts "=============="

def better_puts_four(array)
  array.each_slice(4){|slice| puts slice.to_s}
end

better_puts_four((1..16).to_a)


# The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface.
#Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this:
#{'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }.

class Tree
  attr_accessor :children, :node_name
  def initialize(hash)
    @node_name = hash.keys.first
    @children = hash[@node_name].map{|pair| Tree.new({pair[0] => pair[1]})}
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  def visit(&block)
    block.call self
  end
end

tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })

tree.visit_all{|node| puts node.node_name}


#Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line.
#You will need to do a simple regular expression match and read lines from a file.
#(This is surprisingly simple in Ruby.) If you want, include line numbers.
def simple_grep(file_name, phrase)
  f = File.open(file_name)
  line_num = 1
  while line = f.gets
    line_num += 1
    puts "line #{line_num}: #{line}" if line.match(phrase)
  end
end

simple_grep('day1.rb', 'Ruby')