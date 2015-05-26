puts "Input a file name:"
fn = gets.chomp
puts "How many times?"
t = gets.chomp.to_i
puts "Content:"
t.times do |x|
  x += 1
  puts "#{x} Times..."
  puts File.read(fn)
end
