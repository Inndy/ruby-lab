print "Weather? (sunny / ranny / orelse?) "
weather = gets.chomp

=begin
We accept "sunny" or "ranny" or everything
=end

case weather
when 'sunny'
  puts "Play"
when 'ranny'
  puts 'Read'
else
  puts 'Sleep'
end
