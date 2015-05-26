print "Which year? "
this_year = gets.chomp.to_i

if this_year > 2000
  puts "y2k is over :)"
elsif this_year < 1800
  puts "NO WAY!"
else
  puts "Okey..."
end
